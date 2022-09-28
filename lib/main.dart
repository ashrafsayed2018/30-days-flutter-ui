import 'package:day2_animation/widgets/star.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;

  void _onScroll() {
    print("");
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        reverse: true,
        controller: _pageController,
        children: [
          makePage(
              image: "assets/images/1.jpg",
              title: "مكافحة الصراصير",
              description:
                  "  لقد اكتسبنا خبرة كبيرة في خدمات مكافحة الحشرات والقوارض، مما يمنحنا القدرة على تقديم خدماتنا بشكل استثنائي لمكافحة الآفات  لقد اكتسبنا خبرة كبيرة في خدمات مكافحة الحشرات والقوارض، مما يمنحنا القدرة على تقديم خدماتنا بشكل استثنائي لمكافحة الآفات",
              index: 1),
          makePage(
              image: "assets/images/2.jpg",
              title: "مكافحة بق الفراش",
              description: "الافضل والاقوى في مكافحة الحشرات",
              index: 2),
          makePage(
              image: "assets/images/3.jpg",
              title: "مكافحة الفئران",
              description: "الافضل والاقوى في مكافحة الحشرات",
              index: 3),
          makePage(
              image: "assets/images/4.jpg",
              title: "مكافحة الذباب",
              description: "الافضل والاقوى في مكافحة الحشرات",
              index: 4),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, index}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [.3, .9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    index.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "/4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.end,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Star(),
                        Star(),
                        Star(),
                        Star(),
                        Star(
                          isSelected: false,
                        ),
                        Text(
                          "4.0",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "(2345)",
                          style: TextStyle(color: Colors.white70, fontSize: 10),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        description,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.6,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      " .... اقرأ المزيد",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
