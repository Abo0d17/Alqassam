import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:alqasam/screens/arms_screen.dart';
import 'package:alqasam/screens/videos_screen.dart';
import 'package:alqasam/screens/favorite_screen.dart';
import 'package:alqasam/screens/home_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {



  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of<HomeCubit>(context);


  int currentIndex = 0;

  List<Widget> screens = [HomeScreen(), FavoriteScreen(), SearchScreen(), ProfileScreen()];

  List<String> title = ["الرئيسية", "المفضلة", "الفيديوهات", "الأسلحة"];

  void changeNavBar(index) {
    currentIndex = index;
    emit(ChangeNavBar());
  }
}
