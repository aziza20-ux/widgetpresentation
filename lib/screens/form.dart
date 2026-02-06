import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
  //final _formKey = GlobalKey<FormState>();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome back',
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 19, 20, 20),
            ),
          ),

          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'name',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.length <=2){
                      return 'please enter you full name';
                    }
                    return null;
                  },
                ),
                //const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    //icon: Icons(Icons.email),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter your email please';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder()
                  ),
              
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please type in your password';
                    }
                    return null;
                  },
                ),
               // const SizedBox(height: 10,),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(const SnackBar(content: Text('submitted')));
                    }
                  },

                  child: Text('Submit'),
                ),
              
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}
