part of '../home.dart';

class _HeaderCardContent extends StatelessWidget {
  void _onSelectCategory(Category category) {
    AppNavigator.push(category.route);
  }

  @override
  Widget build(BuildContext context) {
    var themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    var isDark = themeCubit.isDark;

    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () => themeCubit.toggleTheme(),
                  padding: const EdgeInsets.only(left: 28),
                  icon: Icon(
                    isDark
                        ? Icons.wb_sunny_outlined
                        : Icons.dark_mode_outlined,
                    color: isDark ? Colors.yellow : Colors.black,
                    size: 25,
                  )),
            ),
          ),
          _buildTitle(),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: KSearchBar(),
          ),
          _buildCategories(context),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 6),
      alignment: Alignment.topLeft,
      child: const Text(
        'What Fruit\nare you looking for?',
        style: TextStyle(
          fontSize: 25,
          height: 1.4,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget _buildCategories(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(28, 42, 28, 62),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2.6,
        mainAxisSpacing: 15,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          categories[index],
          onPress: () => _onSelectCategory(categories[index]),
        );
      },
    );
  }
}
