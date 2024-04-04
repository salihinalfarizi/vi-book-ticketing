import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vi_book/data/firebase/firebase_authentication.dart';
import 'package:vi_book/data/firebase/firebase_user_repository.dart';
import 'package:vi_book/domain/usecase/login/login.dart';
import 'package:vi_book/presentation/pages/main_page/main_page.dart';
import 'package:vi_book/presentation/provider/usecase/login_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Login login = ref.watch(loginProvider);

              login(LoginParams(email: 'test123@gmail.com', password: '123456'))
                  .then((result) {
                if (result.isSuccess) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          MainPage(user: result.resultValue!)));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(result.errorMessage!),
                  ));
                }
              });
            },
            child: const Text('Login')),
      ),
    );
  }
}
