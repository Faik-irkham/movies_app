import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:movies_app/shared/theme.dart';
import 'package:movies_app/widgets/products_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0C0C0C),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg-ob.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/MOVIER.png'),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0XFFC42673), Colors.black],
                        stops: [0.0, 0.5],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/ic/Bell.svg',
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hello',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: extraBold,
                      ),
                      children: [
                        TextSpan(
                          text: ' Gilbert',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Let’s Find Yout Facorite Movie',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border(
                        left: BorderSide(
                          width: 1.2,
                          color: Color(0XFF35B2D0),
                        ),
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/ic/Magnifer.svg',
                        width: 24.0,
                        height: 24.0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: white70TextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          border: GradientOutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.red,
                                Colors.transparent,
                              ],
                            ),
                            width: 1,
                          ),
                          focusedBorder: GradientOutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.red,
                                Colors.transparent,
                              ],
                            ),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                'Trending Movies',
                style: whiteTextStyle.copyWith(
                  fontWeight: extraBold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 32),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    movieCards(
                      'assets/mv-2.png',
                      'Harry Potter',
                      'The Goblet of Fire',
                    ),
                    movieCards(
                      'assets/mv-1.png',
                      'Harry Potter',
                      'The Goblet of Fire',
                    ),
                    movieCards(
                      'assets/mv-3.png',
                      'Star Wars',
                      'The Rise of',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
