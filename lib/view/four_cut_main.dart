import 'package:flutter/material.dart';
import 'package:fourcut/style/font.dart';
import 'package:fourcut/style/size.dart';

class FourCutMainScreen extends StatefulWidget {
  const FourCutMainScreen({Key? key}) : super(key: key);

  @override
  State<FourCutMainScreen> createState() => _FourCutMainScreenState();
}

class _FourCutMainScreenState extends State<FourCutMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                background(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                      width: photoWidth(),
                      height: getScreenHeight(context) * 0.95,
                      padding: EdgeInsets.symmetric(
                          vertical: photoPaddingVertical(),
                          horizontal: photoPaddingHorizontal()),
                      decoration: const BoxDecoration(
                        color: Color(0xffff9d73),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'YEONCHEOL FILM',
                              style: Lee(fontSize: 24),
                            ),
                          ),
                          photoRow(
                              imgSrc1: '/img5.jpg',
                              imgSrc2: '/img7.jpg',
                              desc: '선남선녀 그 잡채 컷!'),
                          const SizedBox(height: 20),
                          photo(imgSrc: '/img1.jpg', desc: '사랑스런여니♥︎ HBD🎂🎉'),
                          const SizedBox(height: 20),
                          photo(
                              imgSrc: '/img3.jpg',
                              desc: '23.01.04 종로 칵테일 BAR \'이탄\' 에서'),
                          const SizedBox(height: 20),
                          photoRow(
                              imgSrc1: '/img2.jpg',
                              imgSrc2: '/img4.jpg',
                              desc: '23.01.01 100일♥︎'),
                          Expanded(
                            child: Align(
                              child: Text(
                                '철이♥︎여니의 행복네컷📸',
                                style: Lee(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          Text(
                            '2022.09.24 ~ ing♥',
                            style:
                                Lee(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget photo({required String imgSrc, required String desc}) {
    return SizedBox(
      width: photoWidth(),
      height: photoHeight(context),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            imgSrc,
            fit: BoxFit.cover,
            width: photoWidth(),
          ),
          photoDesc(desc: desc),
        ],
      ),
    );
  }

  Widget photoRow(
      {required String imgSrc1,
      required String imgSrc2,
      required String desc}) {
    return SizedBox(
      width: photoWidth(),
      height: photoHeight(context),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Row(
            children: [
              Image.asset(
                imgSrc1,
                width: (photoWidth() - (photoPaddingHorizontal() * 2)) / 2,
                height: photoHeight(context),
                fit: BoxFit.cover,
              ),
              Image.asset(
                imgSrc2,
                width: (photoWidth() - (photoPaddingHorizontal() * 2)) / 2,
                height: photoHeight(context),
                fit: BoxFit.cover,
              ),
            ],
          ),
          photoDesc(desc: desc),
        ],
      ),
    );
  }

  Widget photoDesc({required String desc}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          desc,
          style: Lee(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget background() {
    return SizedBox(
      child: Image.asset(
        '/background.png',
        width: getScreenWidth(context),
        height: getScreenHeight(context),
        fit: BoxFit.fill,
      ),
    );
  }
}
