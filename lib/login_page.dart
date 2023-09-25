import 'package:flutter/material.dart';
import 'package:prt3/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //ignore: prefer_typing_uninitialized_variables
  var namauser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showInput(_usernameController, 'Username', false, "person"),
            _showInput(_passwordController, 'Password', true, "password"),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  if (_usernameController.text == 'admin' &&
                      _passwordController.text == 'admin') {
                    saveUsername();
                    _showDialog('Anda Berhasil Login', const HomePage());
                  } else {
                    _showDialog(
                        'Username dan Password salah', const LoginPage());
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.fromLTRB(6, 20, 6, 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void saveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', _usernameController.text);
  }

  _showInput(namacontroller, placholder, isPassword, icon) {
    IconData iconUsed = icon == 'person' ? Icons.person : Icons.password;
    return TextField(
      controller: namacontroller,
      obscureText: isPassword,
      decoration: InputDecoration(
          hintText: placholder,
          prefixIcon: Icon(iconUsed),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)))),
    );
  }

  _showDialog(pesan, alamat) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => alamat,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
