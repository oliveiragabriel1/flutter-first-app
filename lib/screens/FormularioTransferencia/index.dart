import 'package:bytebank/components/Editor/index.dart';
import 'package:bytebank/screens/ListaTranferencia/index.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
   return FormTransferenciaState();
  }

}
class FormTransferenciaState extends State<FormularioTransferencia> {

  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova transferência"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(controller: _controllerNumeroConta, rotule: "Numero da conta", hint: "0000"),
            Editor(controller: _controllerValor, rotule: "Valor", hint: "12.30", icon: Icons.monetization_on),
            ElevatedButton(
              onPressed: () => _criaTranferencia(context), 
              child: Text("Confirmar"),
            ) 
          ],
        ),
      )
    );
  }

  void _criaTranferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controllerNumeroConta.text);
    final double valor = double.tryParse(_controllerValor.text);
    final tranferencia = Transferencia(valor, numeroConta);
    // debugPrint('$tranferencia');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('$tranferencia'),
        backgroundColor: Colors.green,
      ),
    );
    Navigator.pop(context,tranferencia);

  }
}