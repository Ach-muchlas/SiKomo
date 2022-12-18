import 'package:flutter/material.dart';
import 'package:sikomo/material_assets/color/colors.dart';
import 'package:sikomo/material_assets/font/typography.dart';
import 'package:sikomo/material_assets/model/onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnBoardingScreen> {
  // variabel pengganti screen
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: model.length,
              onPageChanged: (int index) {
                setState(() {
                  currentindex = index;
                });
              },
              itemBuilder: ((_, i) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        // background image
                        Image.asset(
                          model[i].imageBackground,
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),

                        // nama lokasi pada background image
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            model[i].imageLocation,
                            style: Typograph.semiBoldSmall
                                .copyWith(color: Colors.white),
                          ),
                        ),

                        // mengatur posisi untuk text
                        Positioned(
                          top: 400,
                          left: 10,
                          right: 10,
                          child: Column(
                            children: [
                              // text bold pada center page (Title)
                              Text(
                                model[i].titleContent,
                                style: Typograph.semiBoldLarge
                                    .copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),

                              // text reguler pada center page (Subtitle)
                              Text(
                                model[i].subtittleContent,
                                style: Typograph.semiBoldSmall
                                    .copyWith(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),

                              // loading animation
                              Container(
                                margin:
                                    const EdgeInsets.only(bottom: 48, top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(model.length,
                                      (index) => buildDot(index, context)),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // button lewati / mulai
                        Container(
                          height: 58,
                          width: 269,
                          margin: const EdgeInsets.only(
                            top: 700,
                            left: 60,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: Colour.yellow,
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/Loading');
                            },
                            child: (currentindex == (model.length - 1))
                                ? Text(
                                    'Mulai',
                                    style: Typograph.txtButton
                                        .copyWith(color: Colors.white),
                                  )
                                : Text(
                                    'Lewati',
                                    style: Typograph.txtButton
                                        .copyWith(color: Colors.white),
                                  ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  // animation pada loading
  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: currentindex == index ? 30 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
