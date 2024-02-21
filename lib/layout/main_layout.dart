import 'package:alqasam/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alqasam/shared/bloc_cubit/home_cubit/home_cubit.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          Color color =
              (MediaQuery.of(context).platformBrightness == Brightness.dark)
                  ? TColors.dark
                  : TColors.light;
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              drawer: const Drawer(),
              appBar: AppBar(
                backgroundColor: TColors.primary,
                title: Text(
                  cubit.title[cubit.currentIndex],
                  style: const TextStyle(),
                ),
                actions: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.brightness_4),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.settings),
                  ),
                ],
              ),
              body: cubit.screens[cubit.currentIndex],
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                backgroundColor: TColors.primary,
                child: const Icon(
                  Icons.arrow_upward,
                  color: TColors.light,
                  size: 30,
                ),
              ),
              bottomNavigationBar: GNav(
                onTabChange: (index) {
                  cubit.changeNavBar(index);
                },
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: color,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                tabMargin: const EdgeInsets.all(10),
                backgroundColor: TColors.primary,
                color: TColors.light,
                tabs: const [
                  GButton(
                    icon: LineIcons.home,
                    text: 'الرئيسية',
                  ),
                  GButton(
                    icon: LineIcons.heart,
                    text: 'المفضلة',
                  ),
                  GButton(
                    icon: Icons.video_collection_outlined,
                    text: 'فيديوهات',
                  ),
                  GButton(
                    icon: Icons.rocket_launch_outlined,
                    text: 'الأسلحة',
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
