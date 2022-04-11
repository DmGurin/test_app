import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final controller = CarouselController();
  int activeIndex = 0; //переменная для точек под слайдами
  final urlImages = [
    'https://images.unsplash.com/photo-1570215171424-f74325192b55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    'https://images.unsplash.com/photo-1567641091594-71640a68f847?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    'https://images.unsplash.com/photo-1564513294435-d85ebeec016a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    'https://images.unsplash.com/photo-1563819886509-b1a8665118ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1706&q=80',
    'https://images.unsplash.com/photo-1563391451014-d1619e61c35e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1824&q=80',
  ];
  final urlIms = [
    'https://images.unsplash.com/photo-1601924582970-9238bcb495d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80',
    'https://images.unsplash.com/photo-1571407970349-bc81e7e96d47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
    'https://images.unsplash.com/photo-1602658015057-c17cd1f324f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    'https://images.unsplash.com/photo-1612040906977-1110aa1bdb6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  ];
  final urlPics = [
    'https://images.unsplash.com/photo-1509545344343-6410b9f9eb41?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1572839101084-3928fd0f63c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1573559566406-d0c130041573?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=989&q=80',
    'https://images.unsplash.com/photo-1497048363455-6f3e84db1cae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(child: Text('Albums')),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              CarouselSlider.builder(
                //carouselController: controller,
                options: CarouselOptions(
                  height: 400,
                  initialPage: 0,
                  //первый слайд для отображения
                  autoPlay: false,
                  //автопрокрутка слайдов
                  //reverse: true, //реверс прокрутки слайдов
                  //autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  //центральный слайд больше
                  //pageSnapping: false,
                  //свайп с остановкой в любом месте прокрутки слайдов
                  //onPageChanged: (index, reason) => setState(() =>
                     // activeIndex = index), //переменная для точек под слайдами
                ),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
              const SizedBox(
                height: 25,
              ),
              //buildIndicator(), //сам идикатор точек под слайдами
              // const SizedBox(
              //   height: 25,
              // ),
              //buildButtons(), //кнопки перехода на страницу
              const SizedBox(
                  width: 350,
                  child: Text(
                      'От ошибок не застрахован никто, но умные люди учатся на чужих, а остальные – предпочитают делать свои. Мы собрали топ-самых популярных ошибок, которые пользователи Сети допускают в своих текстах')),
              const SizedBox(
                height: 25,
              ),
              CarouselSlider.builder(
                //carouselController: controller,
                options: CarouselOptions(
                  height: 400,
                  initialPage: 0,
                  //первый слайд для отображения
                  autoPlay: false,
                  //автопрокрутка слайдов
                  //reverse: true, //реверс прокрутки слайдов
                  //autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  //центральный слайд больше
                  //pageSnapping: false,
                  //свайп с остановкой в любом месте прокрутки слайдов
                  onPageChanged: (index, reason) => setState(() =>
                      activeIndex = index), //переменная для точек под слайдами
                ),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                  width: 350,
                  child: Text(
                      'От ошибок не застрахован никто, но умные люди учатся на чужих, а остальные – предпочитают делать свои. Мы собрали топ-самых популярных ошибок, которые пользователи Сети допускают в своих текстах')),
              const SizedBox(
                height: 25,
              ),
              CarouselSlider.builder(
                //carouselController: controller,
                options: CarouselOptions(
                  height: 400,
                  initialPage: 0,
                  //первый слайд для отображения
                  autoPlay: false,
                  //автопрокрутка слайдов
                  //reverse: true, //реверс прокрутки слайдов
                  //autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  //центральный слайд больше
                  //pageSnapping: false,
                  //свайп с остановкой в любом месте прокрутки слайдов
                  onPageChanged: (index, reason) => setState(() =>
                  activeIndex = index), //переменная для точек под слайдами
                ),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhotoView(
                imageProvider: NetworkImage(urlImage),
              ),
            ),
          );
        },
        child: Container(
          //создание виджета построения с содержимым слайдера
          margin: const EdgeInsets.symmetric(horizontal: 5),
          //color: Colors.grey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(urlImage),
              fit: BoxFit.cover,
            ),
          ),
          // child: Image.network(
          //   UrlImage,
          //   fit: BoxFit.cover,
          // ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        //создание виджита индикатора (точек под слайдами)
        activeIndex: activeIndex,
        count: urlImages.length,
        onDotClicked: animateToSlide, //при клике на кружки переход
        effect: const SlideEffect(
          dotWidth: 20,
          dotHeight: 20,
          dotColor: Colors.black54,
          activeDotColor: Colors.red,
        ),
      );

  Widget buildButtons({bool stretch = false}) => Row(
        //виджет кнопок перехода на страницы
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              ),
              onPressed: previous,
              child: const Icon(
                Icons.arrow_back,
                size: 32,
              )),
          stretch
              ? const Spacer()
              : const SizedBox(
                  width: 32,
                ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              ),
              onPressed: next,
              child: const Icon(
                Icons.arrow_forward,
                size: 32,
              )),
        ],
      );

  void animateToSlide(int index) => controller.animateToPage(index);

  void next() => controller.nextPage(
        duration: const Duration(
          microseconds: 500,
        ),
      );

  void previous() => controller.previousPage(
        duration: const Duration(
          microseconds: 500,
        ),
      );
}

