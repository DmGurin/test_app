import 'package:flutter/material.dart';
import 'package:test_app/screens/profile_screen/screen.dart';
import 'package:test_app/screens/source/images.dart';
import 'package:test_app/screens/style/app_text_styles.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(child: Text('Friends')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black12,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 0,
                    spreadRadius: 0,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImages.manman)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        'JONSON',
                        style: AppTextStyle.textStyle22w500,
                      ),
                      Text(
                        'Boris',
                        style: AppTextStyle.textStyle16w500,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black12,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 0,
                    spreadRadius: 0,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(AppImages.man)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        'JONSON',
                        style: AppTextStyle.textStyle22w500,
                      ),
                      Text(
                        'Bill',
                        style: AppTextStyle.textStyle16w500,
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                      },
                      child: const Icon(Icons.arrow_forward)),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black12,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 0,
                    spreadRadius: 0,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImages.woman)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        'JONSON',
                        style: AppTextStyle.textStyle22w500,
                      ),
                      Text(
                        'Sandra',
                        style: AppTextStyle.textStyle16w500,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
