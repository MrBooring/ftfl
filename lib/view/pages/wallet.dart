import 'package:flutter/material.dart';
import 'package:ftfl/view/widgets/custom_Container.dart';
import 'package:lottie/lottie.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 240, 246),
      appBar: AppBar(
        title: Text("Card & wallets"),
        leading: Icon(Icons.chevron_left),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SizedBox(
            height: size.height,
            child: ListView(
              children: [
                CustomContainer(
                  height: size.height * .32,
                  width: size.width * .9,
                  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                  xheight: .8,
                  xwidth: .6,
                  borderRadious: 20,
                  gapChild: SizedBox(
                    width: size.width * .35,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      child: Text(
                        "Guide",
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: size.height * .23,
                          // width: size.width * .9,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/cc.png",
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Card Status : ",
                                          style: Theme.of(context).textTheme.labelLarge,
                                        ),
                                        TextSpan(
                                          text: "Inactive",
                                          style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Activate Your Lifeline Card",
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        "\$3499/- Life Time",
                                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                              color: Theme.of(context).colorScheme.primary,
                                            ),
                                      ),
                                      Text(
                                        "\$9999/- year",
                                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                              decoration: TextDecoration.lineThrough,
                                              color: Theme.of(context).colorScheme.error,
                                            ),
                                      ),
                                      Text(
                                        "Offer Ends Soon!",
                                        style: Theme.of(context).textTheme.labelLarge,
                                      ),
                                      SizedBox(
                                        width: size.width * .35,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Theme.of(context).colorScheme.primary, shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(25))),
                                          child: Text(
                                            "Activate Now",
                                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                                  color: Theme.of(context).colorScheme.onPrimary,
                                                ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * .15,
                                width: size.width * .4,
                                child: LottieBuilder.asset(
                                  "assets/one.json",
                                  // fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            child: Text(
                              "Our Features",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: size.width * .4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Theme.of(context).disabledColor.withOpacity(.5),
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Udhar Limit: \$ 74425",
                                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                        color: Theme.of(context).disabledColor.withOpacity(.5),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * .4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Theme.of(context).disabledColor.withOpacity(.5),
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "CP Emi Limit : \$ 74425",
                                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                        color: Theme.of(context).disabledColor.withOpacity(.5),
                                      ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: size.width * .24,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Icon(
                                      Icons.payments_outlined,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Udhar",
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: size.width * .24,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Icon(
                                      Icons.attach_money_outlined,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Text(
                                  "CP EMI",
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: size.width * .24,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Icon(
                                      Icons.payment_outlined,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Business Funds",
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Wallet",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: CustomContainer(
                      height: size.height * .15,
                      width: size.width,
                      backgroundColor: Colors.white,
                      xheight: .55,
                      xwidth: .6,
                      borderRadious: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: CircleAvatar(),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "LifeLine Card Wallet",
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                            Text(
                                              "4356",
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Upcomming EMI/Udhar",
                                              style: Theme.of(context).textTheme.labelLarge,
                                            ),
                                            Text(
                                              "4356",
                                              style: Theme.of(context).textTheme.labelLarge,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                    child: Text(
                                      "Withdraw",
                                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                            color: Theme.of(context).colorScheme.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * .09,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                    child: Text(
                                      "Transfer",
                                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                            color: Theme.of(context).colorScheme.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      gapChild: SizedBox(
                        width: size.width * .35,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 1,
                                )),
                          ),
                          onPressed: () {},
                          child: Text(
                            "More",
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: CustomContainer(
                      height: size.height * .15,
                      width: size.width,
                      backgroundColor: Colors.white,
                      xheight: .55,
                      xwidth: .6,
                      borderRadious: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: CircleAvatar(),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "LifeLine Coin",
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                            Text(
                                              "4356",
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "LifeLine Magic Coin",
                                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                                    color: Theme.of(context).colorScheme.primary,
                                                  ),
                                            ),
                                            Text(
                                              "600",
                                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                                    color: Theme.of(context).colorScheme.primary,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * .5,
                                  child: Text(
                                    "11th Sept 2023 To 11 Oct 2024  ",
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      gapChild: SizedBox(
                        width: size.width * .35,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 1,
                                )),
                          ),
                          onPressed: () {},
                          child: Text(
                            "More",
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: CustomContainer(
                      height: size.height * .15,
                      width: size.width,
                      backgroundColor: Colors.white,
                      xheight: .55,
                      xwidth: .6,
                      borderRadious: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: CircleAvatar(),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Cashback Coin",
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                            Text(
                                              "4356",
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Add Credit Coin",
                                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                                    color: Theme.of(context).colorScheme.error,
                                                  ),
                                            ),
                                            Text(
                                              "",
                                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                                    color: Theme.of(context).colorScheme.error,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * .5,
                                  child: Text(
                                    "11th Sept 2023 To 11 Oct 2024  ",
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      gapChild: SizedBox(
                        width: size.width * .35,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 1,
                                )),
                          ),
                          onPressed: () {},
                          child: Text(
                            "More",
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//  Center(
//           // Center is a layout widget. It takes a single child and positions it
//           // in the middle of the parent.
//           child: CustomContainer(
//         height: size.height * .3,
//         width: size.width * .9,
//         backgroundColor: Colors.blue,
//         xheight: .7,
//         borderRadious: 25,
//       )),
