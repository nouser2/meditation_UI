import 'package:flutter/material.dart';
import 'package:meditation_screens/screens/signIn_screen/signin_screen.dart';

class AccountExistWidget extends StatelessWidget {
  const AccountExistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALREADY HAVE AN ACCOUNT?',
          style: TextStyle(
              fontFamily: 'HelveticaNeue',
              fontWeight: FontWeight.w800,
              color: Color(0xFFA1A4B2)),
        ),
        const SizedBox(
          width: 5,
        ),
        TextButton(
          onPressed: (() {
            // go to login Screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignInScreen(),
              ),
            );
          }),
          child: const Text(
            'LOG IN',
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              fontWeight: FontWeight.w800,
              color: Color(0xFF8E97FD),
            ),
          ),
        )
      ],
    );
  }
}
