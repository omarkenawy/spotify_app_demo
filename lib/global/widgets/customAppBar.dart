import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.showbBackButton = true,
      this.title,
      this.button,
      this.backGround});

  final Widget? title;
  final Color? backGround;
  final Widget? button;
  final bool showbBackButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
          backgroundColor: backGround,
          centerTitle: true,
          title: title ?? const Text(''),
          actions: [button ?? Container()],
          automaticallyImplyLeading: false,
          titleSpacing: 8,
          leading: showbBackButton
              ? GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: SvgPicture.asset(
                      "assets/svgs/left-arrow-back-svgrepo-com.svg",
                      height: 24,
                      width: 24,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : const Text('data')),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
