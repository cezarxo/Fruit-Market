import 'package:flutter/material.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<AuthCubit, AuthState>(
    //   listener: (context, state) {
    //     if (state is AuthSucess) {
    //       print('Hello its success');
    //     }

    //     if (state is AuthFailure) {
    //       print('hello its failure');
    //     }

    //     if (state is AuthLoading) {
    //       print('hello its loading');
    //     }
    //   },
    //   builder: (context, state) {
    return const Scaffold(
      body: LoginViewBody(),
    );
    // },
    // );
  }
}
