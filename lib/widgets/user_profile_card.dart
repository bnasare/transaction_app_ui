import 'package:flutter/material.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color.secondary,
            const Color.fromARGB(255, 47, 33, 84),
            Color.lerp(
                color.secondary, const Color.fromARGB(255, 208, 207, 207), 0.3)!
          ],
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
              leading: Badge(
                backgroundColor: Colors.transparent,
                alignment: Alignment.topLeft,
                label: Material(
                  color: color.surface,
                  shape: const CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/images/crown.png',
                      fit: BoxFit.cover,
                      width: 14,
                    ),
                  ),
                ),
                padding: EdgeInsets.zero,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/female.jpg'),
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.only(left: 18, top: 5),
              title: Text('Michael W.',
                  style: TextStyle(
                      color: color.surface,
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('Premium Member | NG0T986',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: color.surface.withOpacity(0.4))),
              )),
          const Spacer(),
          Container(
            height: 100,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
            decoration: BoxDecoration(
                color: color.surface, borderRadius: BorderRadius.circular(18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: color.tertiary,
                    child: Image.asset(
                      'assets/images/points.png',
                      fit: BoxFit.cover,
                      width: 40,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text('My Points',
                      style: textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.w600))
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CircleAvatar(
                      radius: 23,
                      backgroundColor: color.tertiary,
                      child: Image.asset(
                        'assets/images/voucher.png',
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(height: 13),
                  Text('My Voucher',
                      style: textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.w600))
                ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 23,
                        backgroundColor: color.tertiary,
                        child: Image.asset('assets/images/diamond.png',
                            fit: BoxFit.cover, width: 30)),
                    const SizedBox(height: 13),
                    Text('My Mission',
                        style: textTheme.bodySmall
                            ?.copyWith(fontWeight: FontWeight.w600))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
