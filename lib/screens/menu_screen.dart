import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:netsign.tv/models/menu_model.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              /// menu button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/Group 1204.svg'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Menu',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),

              ///menu items
              Container(
                color: Colors.white,
                child: Wrap(
                  children: List.generate(
                      menuData['titles'].length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: ListTile(
                              leading: SvgPicture.asset(
                                menuData['icons'][index],
                              ),
                              title: Text(
                                menuData['titles'][index].toString(),
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              trailing:
                                  SvgPicture.asset('assets/Group 1200.svg'),
                            ),
                          )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                InkWell(
                  onTap: () =>
                      {Navigator.of(context).pushNamed("/privacy-policy")},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(45, 0, 0, 20),
                    child: Text(
                      "Privacy Policy",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).pushNamed("/terms-and-conditions")
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(45, 0, 0, 20),
                    child: Text(
                      "Terms & Conditions",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      {Navigator.of(context).pushNamed("/faq-and-support")},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(45, 0, 0, 20),
                    child: Text(
                      "Faq & Support",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
