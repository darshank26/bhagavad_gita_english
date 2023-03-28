
import 'dart:ffi';
import 'dart:ui';
import 'package:bhagavad_gita_english/AdHelper/adshelper.dart';
import 'package:bhagavad_gita_english/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:math' as math;

import 'package:page_transition/page_transition.dart';

import '../utils/chapter1.dart'; // import this
import '../utils/chapter2.dart';
import '../utils/chapter3.dart';
import '../utils/chapter4.dart'; // import this

class ShlokaDetailScreen extends StatefulWidget {
  final int listIndex;
  final int chapter;

  const ShlokaDetailScreen({Key? key,required this.listIndex,required this.chapter}) : super(key: key);

  @override
  _ShlokaDetailScreenState createState() => _ShlokaDetailScreenState(listIndex);
}

class _ShlokaDetailScreenState extends State<ShlokaDetailScreen> {

  bool isLanguageSelected = false;

  final int listIndex;

  _ShlokaDetailScreenState(this.listIndex); //constructor

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  // bool _getValue = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdOfHomeScreen,
      request: const AdRequest(),
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

    if(widget.chapter == 1)
    {
        return DefaultTabController(
          length: 48,
          initialIndex: listIndex,
          child: Scaffold(
            backgroundColor: kdetailbackground,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: kmarroncolor, //change your color here
              ),
              title: Text("Chapter ${widget.chapter}",
                  style: GoogleFonts.aclonica(
                      letterSpacing: 0.8,
                      fontSize: 24,
                      color: kmarroncolor,
                      fontWeight: FontWeight.bold)),
              centerTitle: true,
              backgroundColor: kprimarycolor,
              elevation: 10,
              // give the app bar rounded corners

            ),
            body: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: AppBar(
                    backgroundColor: kmarroncolor,
                    bottom: const TabBar(
                      isScrollable: true,
                      labelColor: kprimarycolor,
                      labelStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5),
                      unselectedLabelColor: Colors.white,
                      indicatorColor: kprimarycolor,
                      tabs: [
                        Tab(
                          child: Text("Shloka 1",style: TextStyle(fontSize: 16),),
                        ),
                        Tab(
                          child: Text("Shloka 2",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 3",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 4",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 5",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 6",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 7",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 8",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 9",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 10",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 11",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 12",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 13",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 14",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 15",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 16",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 17",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 18",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 19",style: TextStyle(fontSize: 16),),
                        ),
                        Tab(
                          child: Text("Shloka 20",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 21",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 22",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 23",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 24",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 25",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 26",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 27",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 28",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 29",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 30",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 31",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 32",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 33",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 34",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 35",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 36",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 37",style: TextStyle(fontSize: 16),),
                        ),
                        Tab(
                          child: Text("Shloka 38",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 39",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 40",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 41",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 42",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 43",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 44",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 45",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 46",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("Shloka 47",style: TextStyle(fontSize: 16,)),
                        ),

                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: TabBarView(

                    children: [
                      // 1 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[0],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[0],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 2 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[1],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[1],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 3 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[2],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[2],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 4 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[3],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[3],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 5 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[4],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[4],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 6 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[5],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[5],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 7 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[6],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[6],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 8 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[7],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[7],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 9 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[8],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[8],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 10 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[9],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[9],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 11 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[10],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[10],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 12 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[11],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[11],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 13 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[12],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[12],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 14 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[13],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[13],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 15 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[14],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[14],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 16 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[15],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[15],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 17 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[16],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[16],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 18 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[17],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[17],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 19 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[18],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[18],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 20 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[19],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[19],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 21 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[20],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[20],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 22 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[21],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[21],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 23 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[22],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[22],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 24 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[23],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[23],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 25 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[24],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[24],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 26 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[25],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[25],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 27 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[26],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[26],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 28 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[27],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[27],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 29 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[28],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[28],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 30 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[29],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[29],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 31 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[30],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[30],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 32 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[31],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[31],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 33 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[32],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[32],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 34 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[33],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[33],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 35 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[34],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[34],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 36 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[35],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[35],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 37 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[36],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[36],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 38 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[37],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[37],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 39 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[38],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[38],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 40 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[39],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[39],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 41 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[40],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[40],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 42 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[41],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[41],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 43 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[42],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[42],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 44 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[43],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[43],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 45 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[44],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[44],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 46 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[45],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[45],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 47 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top:40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            chapter_one_trans_sanskrit[46],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),
                                        Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                        Container(
                                          child: Text(
                                            chapter_one_english[46],
                                            style: GoogleFonts.poppins(
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              height: 2,
                                              fontWeight: FontWeight.w700,
                                              color: kprimarycolor,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                    ],
                  ),
                ),



              ],
            ),


          ),
        );
      }
    else if(widget.chapter == 2)
    {
      return DefaultTabController(
        length: 72,
        initialIndex: listIndex,
        child: Scaffold(
          backgroundColor: kdetailbackground,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: kmarroncolor, //change your color here
            ),
            title: Text("Chapter ${widget.chapter}",
                style: GoogleFonts.aclonica(
                    letterSpacing: 0.8,
                    fontSize: 24,
                    color: kmarroncolor,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: kprimarycolor,
            elevation: 10,
            // give the app bar rounded corners

          ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: kmarroncolor,
                  bottom: const TabBar(
                    isScrollable: true,
                    labelColor: kprimarycolor,
                    labelStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5),
                    unselectedLabelColor: Colors.white,
                    indicatorColor: kprimarycolor,
                    tabs: [
                      Tab(
                        child: Text("Shloka 1",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 2",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 3",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 4",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 5",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 6",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 7",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 8",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 9",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 10",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 11",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 12",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 13",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 14",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 15",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 16",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 17",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 18",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 19",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 20",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 21",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 22",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 23",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 24",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 25",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 26",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 27",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 28",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 29",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 30",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 31",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 32",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 33",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 34",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 35",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 36",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 37",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 38",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 39",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 40",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 41",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 42",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 43",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 44",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 45",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 46",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 47",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 48",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 49",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 50",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 51",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 52",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 53",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 54",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 55",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 56",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 57",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 58",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 59",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 60",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 61",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 62",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 63",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 64",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 65",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 66",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 67",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 68",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 69",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 70",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 71",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 72",style: TextStyle(fontSize: 16,)),
                      ),


                    ],
                  ),
                ),
              ),

              Expanded(
                child: TabBarView(

                  children: [
                    // 1 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[0],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[0],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 2 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[1],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[1],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 3 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[2],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[2],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 4 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[3],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[3],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 5 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[4],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[4],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 6 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[5],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[5],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 7 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[6],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[6],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 8 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[7],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[7],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 9 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[8],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[8],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 10 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[9],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[9],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 11 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[10],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[10],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 12 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[11],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[11],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 13 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[12],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[12],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 14 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[13],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[13],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 15 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[14],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[14],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 16 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[15],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[15],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 17 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[16],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[16],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 18 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[17],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[17],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 19 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[18],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[18],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 20 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[19],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[19],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 21 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[20],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[20],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 22 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[21],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[21],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 23 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[22],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[22],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 24 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[23],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[23],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 25 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[24],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[24],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 26 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[25],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[25],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 27 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[26],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[26],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 28 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[27],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[27],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 29 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[28],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[28],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 30 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[29],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[29],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 31 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[30],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[30],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 32 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[31],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[31],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 33 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[32],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[32],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 34 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[33],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[33],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 35 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[34],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[34],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 36 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[35],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[35],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 37 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[36],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[36],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 38 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[37],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[37],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 39 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[38],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[38],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 40 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[39],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[39],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 41 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[40],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[40],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 42 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[41],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[41],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 43 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[42],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[42],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 44 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[43],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[43],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 45 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[44],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[44],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 46 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[45],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[45],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 47 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[46],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[46],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 48 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[47],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[47],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 49 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[48],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[48],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 50 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[49],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[49],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 51 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[50],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[50],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 52 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[51],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[51],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 53 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[52],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[52],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 54 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[53],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[53],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 55 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[54],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[54],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 56 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[55],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[55],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 57 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[56],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[56],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 58 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[57],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[57],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 59 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[58],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[58],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 60 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[59],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[59],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 61 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[60],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[60],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 62 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[61],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[61],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 63 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[62],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[62],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 64 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[63],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[63],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 65 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[64],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[64],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 66 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[65],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[65],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 67 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[66],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[66],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 68 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[67],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[67],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 69 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[68],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[68],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 70 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[69],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[69],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 71 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[70],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[70],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 72 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_two_trans_sanskrit[71],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_two_english[71],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),


        ),
      );
    }
    else if(widget.chapter == 3)
    {
      return DefaultTabController(
        length: 43,
        initialIndex: listIndex,
        child: Scaffold(
          backgroundColor: kdetailbackground,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: kmarroncolor, //change your color here
            ),
            title: Text("Chapter ${widget.chapter}",
                style: GoogleFonts.aclonica(
                    letterSpacing: 0.8,
                    fontSize: 24,
                    color: kmarroncolor,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: kprimarycolor,
            elevation: 10,
            // give the app bar rounded corners

          ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: kmarroncolor,
                  bottom: const TabBar(
                    isScrollable: true,
                    labelColor: kprimarycolor,
                    labelStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5),
                    unselectedLabelColor: Colors.white,
                    indicatorColor: kprimarycolor,
                    tabs: [
                      Tab(
                        child: Text("Shloka 1",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 2",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 3",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 4",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 5",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 6",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 7",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 8",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 9",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 10",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 11",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 12",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 13",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 14",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 15",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 16",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 17",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 18",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 19",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 20",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 21",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 22",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 23",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 24",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 25",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 26",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 27",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 28",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 29",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 30",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 31",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 32",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 33",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 34",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 35",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 36",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 37",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 38",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 39",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 40",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 41",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 42",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 43",style: TextStyle(fontSize: 16,)),
                      ),


                    ],
                  ),
                ),
              ),

              Expanded(
                child: TabBarView(

                  children: [
                    // 1 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[0],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[0],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 2 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[1],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[1],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 3 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[2],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[2],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 4 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[3],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[3],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 5 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[4],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[4],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 6 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[5],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[5],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 7 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[6],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[6],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 8 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[7],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[7],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 9 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[8],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[8],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 10 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[9],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[9],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 11 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[10],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[10],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 12 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[11],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[11],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 13 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[12],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[12],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 14 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[13],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[13],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 15 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[14],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[14],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 16 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[15],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[15],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 17 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[16],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[16],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 18 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[17],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[17],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 19 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[18],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[18],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 20 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[19],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[19],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 21 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[20],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[20],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 22 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[21],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[21],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 23 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[22],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[22],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 24 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[23],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[23],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 25 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[24],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[24],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 26 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[25],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[25],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 27 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[26],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[26],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 28 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[27],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[27],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 29 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[28],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[28],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 30 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[29],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[29],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 31 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[30],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[30],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 32 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[31],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[31],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 33 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[32],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[32],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 34 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[33],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[33],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 35 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[34],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[34],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 36 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[35],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[35],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 37 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[36],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[36],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 38 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[37],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[37],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 39 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[38],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[38],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 40 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[39],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[39],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 41 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[40],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[40],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 42 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[41],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[41],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 43 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_three_trans_sanskrit[42],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_three_english[42],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),

                  ],
                ),
              ),



            ],
          ),


        ),
      );
    }
    else if(widget.chapter == 4)
    {
      return DefaultTabController(
        length: 42,
        initialIndex: listIndex,
        child: Scaffold(
          backgroundColor: kdetailbackground,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: kmarroncolor, //change your color here
            ),
            title: Text("Chapter ${widget.chapter}",
                style: GoogleFonts.aclonica(
                    letterSpacing: 0.8,
                    fontSize: 24,
                    color: kmarroncolor,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: kprimarycolor,
            elevation: 10,
            // give the app bar rounded corners

          ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: kmarroncolor,
                  bottom: const TabBar(
                    isScrollable: true,
                    labelColor: kprimarycolor,
                    labelStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5),
                    unselectedLabelColor: Colors.white,
                    indicatorColor: kprimarycolor,
                    tabs: [
                      Tab(
                        child: Text("Shloka 1",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 2",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 3",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 4",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 5",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 6",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 7",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 8",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 9",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 10",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 11",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 12",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 13",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 14",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 15",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 16",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 17",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 18",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 19",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 20",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 21",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 22",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 23",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 24",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 25",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 26",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 27",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 28",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 29",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 30",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 31",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 32",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 33",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 34",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 35",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 36",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 37",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("Shloka 38",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 39",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 40",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 41",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("Shloka 42",style: TextStyle(fontSize: 16,)),
                      ),


                    ],
                  ),
                ),
              ),

              Expanded(
                child: TabBarView(

                  children: [
                    // 1 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[0],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[0],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 2 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[1],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[1],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 3 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[2],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[2],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 4 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[3],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[3],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 5 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[4],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[4],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 6 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[5],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[5],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 7 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[6],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[6],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 8 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[7],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[7],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 9 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[8],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[8],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 10 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[9],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[9],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 11 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[10],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[10],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 12 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[11],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[11],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 13 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[12],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[12],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 14 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[13],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[13],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 15 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[14],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[14],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 16 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[15],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[15],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 17 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[16],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[16],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 18 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[17],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[17],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 19 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[18],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[18],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 20 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[19],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[19],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 21 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[20],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[20],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 22 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[21],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[21],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 23 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[22],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[22],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 24 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[23],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[23],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 25 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[24],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[24],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 26 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[25],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[25],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 27 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[26],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[26],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 28 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[27],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[27],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 29 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[28],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[28],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 30 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[29],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[29],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 31 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[30],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[30],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 32 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[31],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[31],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 33 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[32],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[32],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 34 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[33],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[33],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 35 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[34],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[34],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 36 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[35],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[35],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 37 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[36],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[36],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 38 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[37],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[37],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 39 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[38],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[38],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 40 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[39],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[39],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 41 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[40],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[40],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 42 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Container(
                            padding: const EdgeInsets.all(40),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(top:40),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_four_trans_sanskrit[41],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      Center(child: Image.asset("assets/images/bottom.png",height: 45,width: 400.0)),
                                      Container(
                                        child: Text(
                                          chapter_four_english[41],
                                          style: GoogleFonts.poppins(
                                            letterSpacing: 1,
                                            fontSize: 18,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),


                  ],
                ),
              ),



            ],
          ),


        ),
      );
    }
    return Container();

  }


}
