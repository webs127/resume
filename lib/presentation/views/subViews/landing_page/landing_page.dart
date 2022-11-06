import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume/presentation/resources/color_manager.dart';
import 'package:resume/presentation/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  final githubLink =
  Uri.parse(AppTexts.githubLink);
  final twitterLink =
  Uri.parse(AppTexts.twitterLink);

  Future<void> _launchUrl(Uri uri) async {
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
    else {
      launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage(ImageTexts.profilePic),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          AppTexts.name,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          AppTexts.username,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          AppTexts.title,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 3,
                  color: ColorManager.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppTexts.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17.5, fontFamily: "Poppins"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 3,
                  color: ColorManager.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppTexts.offerCompany,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17.5, fontFamily: "Poppins"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 3,
                  color: ColorManager.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () async {
                        _launchUrl(githubLink);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(FontAwesomeIcons.github),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            AppTexts.githubUser,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.3,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: ()  {
                        _launchUrl(twitterLink);

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            AppTexts.twitterUser,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.3,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.phone,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          AppTexts.phoneNum,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14.3,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.mail,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            AppTexts.emailUser,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.3,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
