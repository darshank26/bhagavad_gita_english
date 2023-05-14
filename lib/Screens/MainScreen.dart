import 'dart:io';
import 'dart:ui';
import 'package:bhagavad_gita_english/Screens/SholkaScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:launch_review/launch_review.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../AdHelper/adshelper.dart';
import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isLanguageSelected = false;


  List<String> gita_chapter =
  [
    "Arjuna \nVishada Yoga",
    "Sankhya Yoga",
    "Karma Yoga",
    "Jnana Yoga",
    "Sannyasa Yoga",
    "Dhyana Yoga",
    "Vijnana Yoga",
    "Akshara \nBrahma Yoga",
    "Raja Vidya \nRaja Guhya Yoga",
    "Vibhuti Yoga",
    "Vishvarupa \nDarshana Yoga",
    "Bhakti Yoga",
    "Kshetra Kshetrajna \nVibhaga Yoga",
    "Guna Triya \nVibhaga Yoga",
    "Purushottama Yoga",
    "Daivasura Sampad \nVibhaga Yoga",
    "Shraddha Traya \nVibhaga Yoga",
    "Moksha \nSannyasa Yoga",
  ];


  Future<void>? _launched;

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdOfHomeScreen,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();

  }


  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'http://darshankomu.com/apps/Marathi%20Aarti%20Sangrah/privacypolicy.html';

    return Scaffold(
      backgroundColor: kmarroncolor,
      appBar: AppBar(
        // actions: [
        //   PopupMenuButton(
        //     color:kmarroncolor,
        //     // add icon, by default "3 dot" icon
        //     // icon: Icon(Icons.book)
        //       itemBuilder: (context){
        //         return [
        //           PopupMenuItem<int>(
        //             value: 0,
        //             child: Text("My Account",style: GoogleFonts.poppins(
        //                 fontSize: 16,
        //                 color: kprimarycolor,
        //                 fontWeight: FontWeight.bold)),
        //           ),
        //
        //           PopupMenuItem<int>(
        //             value: 1,
        //             child: Text("Settings"),
        //           ),
        //
        //           PopupMenuItem<int>(
        //             value: 2,
        //             child: Text("Logout"),
        //           ),
        //         ];
        //       },
        //       onSelected:(value){
        //         if(value == 0){
        //           print("My account menu is selected.");
        //         }else if(value == 1){
        //           print("Settings menu is selected.");
        //         }else if(value == 2){
        //           print("Logout menu is selected.");
        //         }
        //       }
        //   ),
        // ],
        backgroundColor: kprimarycolor,
        elevation: 10,
        title: Align(
          alignment: Alignment.center,
          child: Text("Bhagawad Gita",
              style: GoogleFonts.aclonica(
                  letterSpacing: 0.8,
                  fontSize: 24,
                  color: kmarroncolor,
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: gita_chapter.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: DecoratedBox(
                        decoration:
                        ShapeDecoration(shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                            color: kprimarycolor.withOpacity(0.9)),
                        child: OutlinedButton(
                          onPressed: () =>
                          {

                            Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: SholkaScreen(chapter: i,)))

                          },
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: kprimarycolor.withOpacity(0.9),
                                width: 1.0,
                                style: BorderStyle.solid)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),

                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(gita_chapter[i].toString(),
                                                    style: GoogleFonts.poppins(
                                                      letterSpacing: 1,
                                                      fontSize: 20,
                                                      color: kmarroncolor,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                    textAlign: TextAlign.center,),
                                                )
                                              ],
                                            ),


                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isBannerAdReady)
            Container(
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
        ],
      ),

    );
  }


  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }


}


