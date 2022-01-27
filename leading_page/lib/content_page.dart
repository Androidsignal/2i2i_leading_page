import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leading_page/common/title_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  var speedList = [
    {'logo_img': 'assets/feather_clock.png', 'title': 'Chorny'},
    {'logo_img': 'assets/high_roller.png', 'title': 'High Roller'},
    {'logo_img': 'assets/essertric.png', 'title': 'Essertric'},
    {'logo_img': 'assets/lurker.png', 'title': 'Lurker'},
  ];

  var queuingList = [
    {
      'title': 'Chrony Lounge',
      'content':
          'Chrony: A Guest who is waiting in chronological order.The amount of their support is fixed by the Host, called suggested support. First come, first serve.'
    },
    {
      'title': 'Eccentric Lounge',
      'content':
          'Eccentric: A Guest who offers support using coins of subjective value. For example, an Eccentric could offer their Host art or ticket NFTs.'
    },
    {
      'title': 'High Roller Lounge',
      'content':
          'High Roller: A Guest who offers higher than the suggested support¢. Higher support, first serve.'
    },
    {
      'title': 'Lurker Lounge',
      'content':
          'Lurker : A Guest who just wants to see what is going on. Lurkers do not provide support¢ and do not get to meet the Host. Lurkers help the Host to see potential demand.'
    },
  ];

  var featureList = [
    {
      'feature_icon': "assets/coin_ango.png",
      'title': "Coin Agnostics",
      'content':
          "2i2i does not promote any specific coin. Guests can offer their support in any coin (on Algorand)."
    },
    {
      'feature_icon': "assets/green.png",
      'title': "Green",
      'content':
          "The backbone of 2i2i is Algorand which is a carbon negative blockchain. Peer-to-peer meetings minimise the transferred data."
    },
    {
      'feature_icon': "assets/safe.png",
      'title': "Safe",
      'content':
          "Users can keep their coins on their own 3rd party wallets or non-custodial device wallets."
    },
    {
      'feature_icon': "assets/scale.png",
      'title': "Scalable",
      'content':
          "Having peer-to-peer meetings allows 2i2i to connect large amounts of people without increasing the IT cost."
    },
    {
      'feature_icon': "assets/private.png",
      'title': "Private",
      'content':
          "All meetings are streamed peer-to-peer and are end-to-end encrypted. This means, your meetings are fully private and cannot be accessed by anyone, not even 2i2i."
    },
    {
      'feature_icon': "assets/zero.png",
      'title': "Zero Risk",
      'content':
          "All coin transactions are executed trustlessly on the Algorand blockchain. Whether tiny or huge amounts, we do not get access to your coins"
    },
  ];

  var roadMapList = [
    {'title': "Chrony Lounge", 'content': "Will be implemented soon"},
    {
      'title': "Eccentric Lounge",
      'content': "Will be implemented after the Chrony Lounge"
    },
    {
      'title': "Zero risk",
      'content':
          "Guests offer support to the Host by locking coins in a smart contract. Once the Host and Guest have finished their meeting, 2i2i acts as an Oracle and tells the smart contract to release the coins for the Host. Before the meeting has started, the Guest can change their mind and cancel. This results in the locked coins being sent back to the Guest. Currently, the Guest has to rely on 2i2i to initiate the cancel transaction. To truly make the process trustless, the next version of the smart contract will provide the Guest with tokens in exchange for locking their coins. This will allow Guests to cancel without the permission of 2i2i."
    },
    {
      'title': "Coin agonistic",
      'content':
          "The tech has been implemented to support any coin (on Algorand) from the beginning. To make the experience smoother for initial adaptation, 2i2i will release this feature in the future together with the release of the ‘Eccentric Lounge’. Currently, only ALGO is supported."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appbarWidget(context),
          introTileWidget(context),
          queuingWidget(context),
          customizationWidget(context),
          featureWidget(context),
          roadMapWidget(context),
          ourPhilosophyWidget(context),
        ],
      ),
    );
  }

  Row appbarWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/app_bar_logo.svg',
          height: 6.h,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'About',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: 2.w),
              Text(
                'System',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: 2.w),
              Text(
                'Features',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: 2.w),
              Text(
                'Roadmap',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: 2.w),
              Text(
                'Philosphy',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: 2.w),
              Text(
                'Team',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Sign Up',
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
        ),
        SizedBox(width: 0.23.w),
        ElevatedButton(
          onPressed: () {},
          child: Text('Log In',
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white)),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // <-- Radius
            ),
          ),
        )
      ],
    );
  }

  Column introTileWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4.h),
        Center(
          child: Image.asset(
            'assets/app_logo.png',
            height: 16.h,
          ),
        ),
        SizedBox(height: 4.h),
        Center(
          child: Text(
            'The place for you to hang out',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        SizedBox(height: 2.h),
        Center(
          child: Text(
            '2i2i provides a safe and private space for Guests and Hosts to meet\nin the form of video calls',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 3.5.h),
        Center(
          child: Image.asset(
            'assets/try_button.png',
            height: 10.h,
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              speedList.length,
              (index) => Container(
                    height: 20.h,
                    width: 20.h,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Center(
                                child: Image.asset(
                                  speedList[index]['logo_img']!,
                                  height: 12.h,
                                ),
                              ),
                              flex: 3),
                          Expanded(
                            child: Center(
                              child: Text(speedList[index]['title']!,
                                  style: Theme.of(context).textTheme.headline6),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
        ),
      ],
    );
  }

  Column queuingWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 14.h),
        const TitleWidget(text: '2i2i provides a\nqueuing system'),
        SizedBox(height: 4.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                primary: false,
                shrinkWrap: true,
                children: List.generate(
                    queuingList.length,
                    (index) => Stack(
                          children: [
                            Card(
                              shadowColor:
                                  const Color.fromRGBO(102, 153, 141, 0.2),
                              color: Theme.of(context).primaryColorLight,
                              elevation: 8,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 12),
                              child: Padding(
                                padding: EdgeInsets.all(2.5.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      queuingList[index]['title']!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          ?.copyWith(
                                              fontWeight: FontWeight.w800,
                                              color:
                                                  Theme.of(context).cardColor),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      queuingList[index]['content']!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          ?.copyWith(
                                              fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 2.5.h,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Theme.of(context).cardColor,
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Theme.of(context)
                                                .primaryColorLight),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
              ),
            ),
            const Spacer()
          ],
        ),
        SizedBox(height: 14.h),
      ],
    );
  }

  Column customizationWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(text: 'Customization'),
        SizedBox(height: 4.h),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Card(
                    shadowColor: const Color.fromRGBO(102, 153, 141, 0.2),
                    color: Theme.of(context).primaryColorLight,
                    elevation: 8,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text(
                            'The Host can',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Theme.of(context).cardColor),
                          ),
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/arrow.svg',
                              width: 8.h,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                                child: Text(
                              'Fix the amount of suggested support ( in the Chrony Lounge )',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Theme.of(context).shadowColor),
                            ))
                          ],
                        ),
                        SizedBox(height: 1.2.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/arrow.svg',
                              width: 8.h,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                                child: Text(
                              'Set the maximum duration of meetings',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Theme.of(context).shadowColor),
                            ))
                          ],
                        ),
                        SizedBox(height: 1.2.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/arrow.svg',
                              width: 8.h,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                                child: Text(
                              'Choose the importance for each lounge',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Theme.of(context).shadowColor),
                            ))
                          ],
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  ),
                  Card(
                    shadowColor: const Color.fromRGBO(102, 153, 141, 0.2),
                    color: Theme.of(context).primaryColorLight,
                    elevation: 8,
                    child: Padding(
                      padding: EdgeInsets.all(3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Importance',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                        fontWeight: FontWeight.w800,
                                        color: Theme.of(context).cardColor),
                              ),
                              SvgPicture.asset(
                                'assets/icon/arrow.svg',
                                width: 8.h,
                              ),
                              Expanded(
                                  child: Text(
                                'The importance of a lounge is a number.',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Theme.of(context).shadowColor),
                              ))
                            ],
                          ),
                          SizedBox(height: 1.2.h),
                          Text(
                            'The higher the importance, the more the Host meets Guests from this lounge.',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                ?.copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).shadowColor),
                          ),
                          SizedBox(height: 1.2.h),
                          Row(
                            children: [
                              Text(
                                'Importance 0',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w800,
                                        color: Theme.of(context).cardColor),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                  child: Text(
                                'Choose the importance for each lounge',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Theme.of(context).shadowColor),
                              ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer()
          ],
        ),
        SizedBox(height: 12.h),
      ],
    );
  }

  Column featureWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(),
            const TitleWidget(
              text: 'Features',
              height: 0.025,
            ),
            Image.asset(
              'assets/feature_img.png',
              width: 60.h,
              height: 60.h,
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          primary: false,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.5 / 0.275,
          children: List.generate(
              featureList.length,
              (index) => Card(
                    color: Theme.of(context).primaryColorLight,
                    elevation: 8,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          featureList[index]['feature_icon']!,
                          height: 60,
                          width: 60,
                        ),
                        const VerticalDivider(),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),
                                Text(
                                  featureList[index]['title']!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context).cardColor),
                                ),
                                const SizedBox(height: 8),
                                Text(featureList[index]['content']!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .button
                                        ?.copyWith(
                                            fontWeight: FontWeight.normal,
                                            height: 1.25,
                                            color:
                                                Theme.of(context).shadowColor)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
        )
      ],
    );
  }

  SizedBox roadMapWidget(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 12.h),
          const TitleWidget(
            text: 'Roadmap',
            height: 0.025,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(height: 2.h),
          SizedBox(
            width: 80.h,
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: List.generate(
                  roadMapList.length,
                  (index) => Card(
                        shadowColor: const Color.fromRGBO(102, 153, 141, 0.2),
                        color: Theme.of(context).primaryColorLight,
                        elevation: 8,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.w, vertical: 1.5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                roadMapList[index]['title']!,
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                roadMapList[index]['content']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                        color: Theme.of(context).shadowColor,
                                        fontWeight: FontWeight.normal,
                                        height: 1.25),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }

  SizedBox ourPhilosophyWidget(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 12.h),
          const TitleWidget(
            text: 'Our Philosophy',
            height: 0.025,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(height: 2.h),
          Text(
            '2i2i started with the motto that everyone has value.',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                fontFamily: 'Philosopher',
                fontWeight: FontWeight.w200,
                color: Theme.of(context).shadowColor),
          ),
          SizedBox(height: 2.h),
          Text(
            '“Two fundamental elements of nature are information and energy.\nEveryone in the world has both information and energy to offer.”',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                fontFamily: 'Philosopher',
                fontWeight: FontWeight.w200,
                color: Theme.of(context).shadowColor,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 3.h),
          Text(
            'In 2i2i, the Host provides information and the Guest offers energy in return.',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontFamily: 'Philosopher',
                fontWeight: FontWeight.w200,
                color: Theme.of(context).shadowColor),
          ),
          SizedBox(height: 2.h),
          Card(
            shadowColor: const Color.fromRGBO(102, 153, 141, 0.2),
            color: Theme.of(context).primaryColorLight,
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h,vertical: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Within their meeting, the Host can provide information in various forms.',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text('For example ',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w400
                      )),
                  SizedBox(height: 1.h),
                  RichText(
                    text: TextSpan(
                      text: '• ',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w400
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'by giving advice',
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontWeight: FontWeight.w400
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  RichText(
                    text: TextSpan(
                      text: '• ',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w400
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'simply by their presence and having a chat ',
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontWeight: FontWeight.w400
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  RichText(
                    text: TextSpan(
                      text: '• ',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w400
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'by teaching',
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontWeight: FontWeight.w400
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  RichText(
                    text: TextSpan(
                      text: '• ',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w400
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'by lending an ear to listen',
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontWeight: FontWeight.w400
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  RichText(
                    text: TextSpan(
                      text: '• ',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w400
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Etc.',
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontWeight: FontWeight.w400
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
