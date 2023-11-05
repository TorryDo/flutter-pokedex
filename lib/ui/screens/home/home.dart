// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/configs/colors.dart';
import 'package:pokedex/configs/images.dart';
import 'package:pokedex/data/categories.dart';
import 'package:pokedex/domain/entities/category.dart';
import 'package:pokedex/routes.dart';
import 'package:pokedex/ui/widgets/pokeball_background.dart';
import 'package:pokedex/ui/widgets/search_bar.dart';

import '../../../states/theme/theme_cubit.dart';
import 'widgets/category_card.dart';
import 'widgets/news_card.dart';

part 'sections/header_card_content.dart';
part 'sections/pokemon_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          _HeaderCardContent(),
          _HeaderCardContent(),
        ]),
      ),
    );
  }
}
