import 'package:flutter/material.dart';
import 'package:flutter_latihan_slicing_3/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'size_config.dart';
import 'app_styles.dart';

class PetDetailPage extends StatelessWidget {
  const PetDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          debugPrint('Add to cart button pressed');
        },
        label: Text(
          'Add to cart',
          style: kSourceSansSemibold.copyWith(
            color: kBoxShadowColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 4,
          ),
        ),
        backgroundColor: kGrey,
        extendedPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: kPaddingHorizontal,
        ),
        icon: SvgPicture.asset('assets/add_to_cart_icon.svg'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/dog_marly_cover.png',
                    height: SizeConfig.blockSizeVertical! * 60,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical! * 6,
                          left: SizeConfig.blockSizeHorizontal! * 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyApp(),
                            ),
                          );
                        },
                        child: SvgPicture.asset('assets/arrow_left_icon.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              transform: Matrix4.translationValues(0, -12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Marly',
                        style: kSourceSansBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 6,
                          color: kGrey,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/pin_point_icon.svg'),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Arizona, U.S.',
                            style: kSourceSansRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kLighterGrey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint('Button Tapped');
                    },
                    child: SvgPicture.asset(
                      'assets/favorite_icon.svg',
                      width: 30,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLighterOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          '6 Month',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDarkOrange,
                          ),
                        ),
                        Text(
                          'Age',
                          style: kSourceSansBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kLighterGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLighterOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          'Brown',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDarkOrange,
                          ),
                        ),
                        Text(
                          'Color',
                          style: kSourceSansBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kLighterGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLighterOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          '6 KG',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDarkOrange,
                          ),
                        ),
                        Text(
                          'Weight',
                          style: kSourceSansBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kLighterGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Text(
                'About Me',
                style: kSourceSansRegular.copyWith(
                  color: kLightGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Text(
                'Remember this sweet face? Several years ago Charlie came into our care when their person died. These two easy-going Lhasa Apso mixes quickly to settle into foster care. Living with kids, cats, and other dogs, they were the perfect guests, and once their vetting and evaluation was done this bonded pair found their home with a kind couple. \n\nRemember this sweet face? Several years ago Charlie came into our care when their person died. These two easy-going Lhasa Apso mixes quickly to settle into foster care. Living with kids, cats, and other dogs, they were the perfect guests, and once their vetting and evaluation was done this bonded pair found their home with a kind couple.',
                style: kSourceSansSemibold.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Text(
                'Photo Album',
                style: kSourceSansRegular.copyWith(
                  color: kLightGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/dog_marly01.png',
                        ),
                      ),
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/dog_marly02.png',
                        ),
                      ),
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/dog_marly03.png',
                        ),
                      ),
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
