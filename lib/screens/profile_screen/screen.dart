
import 'package:flutter/material.dart';
import 'package:test_app/screens/source/images.dart';
import 'package:test_app/screens/style/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}
Future<void> _makePhoneCall(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(child: Text('Profile')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(color: Colors.black54, width: 0.2),
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
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 290,
                          width: 400,
                          //padding: EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            //border: Border.all(color: Colors.black54, width: 1),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppImages.man),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Bill',
                                  style: AppTextStyle.textStyle22w500,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '+79037654321',
                                  style: AppTextStyle.textStyle16w500,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'bill@mail.ru',
                                  style: AppTextStyle.textStyle14w500,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'www.bill.ru',
                                  style: AppTextStyle.textStyle14w500,
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                   Positioned(
                      bottom: 80,
                      right: 25,
                      child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: InkWell(
                              splashColor: Colors.red, // splash color
                              onTap: () {
                                _makePhoneCall('tel:123654478');
                              },
                              child: const Icon(Icons.call)))),
                ],
              ),
              //const Spacer(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Работа',
                style: AppTextStyle.textStyle22w500,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: Colors.black54, width: 0.2),
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
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Itec Digital Studio', style: AppTextStyle.textStyle16w500,),
                      SizedBox(
                        height: 5,
                      ),
                      Text('IT, Интернет-технологии'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Ваша возможность, наша страсть',style: AppTextStyle.textStyle16w500,),
                      SizedBox(
                        height: 5,
                      ),
                      Text('51625, г. Ростов, ул. Красная, 45, офис 75'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Посты',style: AppTextStyle.textStyle22w500,),
                  Text('Смотреть все'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.35,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: Colors.black54, width: 0.2),
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
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Работа с текстом может быть сложной и кропотливой, но только для тех, кто не', style: AppTextStyle.textStyle16w500,),
                      SizedBox(
                        height: 10,
                        child: Divider(height: 1, thickness: 0.1, indent: 0, endIndent: 0, color: Colors.black,),
                      ),
                      Text('25 февраля на странцах газет появился мой'),
                      //Text('data'),
                      //Text('data'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: Colors.black54, width: 0.2),
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
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Работа с текстом может быть сложной и кропотливой, но только для тех, кто не', style: AppTextStyle.textStyle16w500,),
                      SizedBox(
                        height: 5,
                      ),
                      Text('25 февраля на странцах газет появился мой'),
                      //Text('data'),
                      //Text('data'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: Colors.black54, width: 0.2),
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
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Работа с текстом может быть сложной и кропотливой, но только для тех, кто не', style: AppTextStyle.textStyle16w500,),
                      SizedBox(
                        height: 5,
                      ),
                      Text('25 февраля на странцах газет появился мой'),
                      //Text('data'),
                      //Text('data'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Альбомы', style: AppTextStyle.textStyle22w500,),
                  Text('Смотреть все'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: Colors.black54, width: 0.2),
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
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
