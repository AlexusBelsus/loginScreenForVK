import 'package:flutter/material.dart';

class AuthWidgets extends StatefulWidget {
  const AuthWidgets({Key? key}) : super(key: key);

  @override
  _AuthWidgetsState createState() => _AuthWidgetsState();
}

class _AuthWidgetsState extends State<AuthWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://sun9-31.userapi.com/impg/g5lmrQqp5KRMRttAidcs45QQMcUJANZEqiD2iA/7Pcfo_WmTXE.jpg?size=807x454&quality=96&sign=a00555a605550e98732d34fee724cfc9&type=album',
          width: 200,
          height: 400,
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey.shade200,
            height: 10,
          ),
          _HeaderWidgest()
        ],
      ),
    );
  }
}

class _HeaderWidgest extends StatelessWidget {
  const _HeaderWidgest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Мобльная версия поможет вам оставаться ВКонтакте, даже если вы далеко от компьютера.',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          SizedBox(
            height: 50,
          ),
          _FormWidgets(),
        ],
      ),
    );
  }
}

class _FormWidgets extends StatefulWidget {
  const _FormWidgets({Key? key}) : super(key: key);

  @override
  __FormWidgetsState createState() => __FormWidgetsState();
}

class __FormWidgetsState extends State<_FormWidgets> {
  final color = const Color(0xFF01579B);
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      print('open app');
    } else {
      print('show error');
    }
  }

  void _registr() {}

  @override
  Widget build(BuildContext context) {
    final textFiledDecoration = const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        isCollapsed: true);
    return Column(
      children: [
        Text('Телефон или Email'),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginTextController,
          decoration: textFiledDecoration,
        ),
        SizedBox(
          height: 20,
        ),
        Text('Пароль'),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: textFiledDecoration,
          obscureText: true, //  скрывает текст
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 400,
          child: TextButton(
              onPressed: _auth,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text(
                'Войти',
              )),
        ),
        TextButton(onPressed: _registr, child: Text('Регистрация'))
      ],
    );
  }
}
