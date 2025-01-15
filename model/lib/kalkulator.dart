import 'package:flutter/material.dart';

void main() {
  runApp(const KalkulatorApp());
}

class KalkulatorApp extends StatelessWidget {
  const KalkulatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kalkulator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KalkulatorPage(),
    );
  }
}

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({Key? key}) : super(key: key);

  @override
  _KalkulatorPageState createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();
  String hasil = '';
  String? operatorTerpilih;

  void setOperator(String operator) {
    setState(() {
      operatorTerpilih = operator;
    });
  }

  void tampilkanHasil() {
    double? angka1 = double.tryParse(angka1Controller.text);
    double? angka2 = double.tryParse(angka2Controller.text);

    if (angka1 != null && angka2 != null && operatorTerpilih != null) {
      setState(() {
        switch (operatorTerpilih) {
          case '+':
            hasil = (angka1 + angka2).toString();
            break;
          case '-':
            hasil = (angka1 - angka2).toString();
            break;
          case '*':
            hasil = (angka1 * angka2).toString();
            break;
          case '/':
            hasil = angka2 != 0 ? (angka1 / angka2).toString() : 'Error';
            break;
          default:
            hasil = 'Error';
        }
      });
    } else {
      setState(() {
        hasil = 'Error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Kalkulator'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: 350, // Ukuran kalkulator seperti di HP
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: angka1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Angka 1',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: angka2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Angka 2',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => setOperator('+'),
                    child: const Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () => setOperator('-'),
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () => setOperator('*'),
                    child: const Text('*'),
                  ),
                  ElevatedButton(
                    onPressed: () => setOperator('/'),
                    child: const Text('/'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: tampilkanHasil,
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  backgroundColor: Colors.grey[300],
                ),
                child: const Text(
                  'Hasil',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                hasil.isNotEmpty ? 'Hasil: $hasil' : '',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
