import 'package:flutter/material.dart';
import 'package:notes/components/icon_button_component.dart';
import 'package:notes/components/spacer_component.dart';
import 'package:notes/pages/home/components/favorites_view_widget.dart';
import 'package:provider/provider.dart';
import '../../../providers/config_provider.dart';
import '../../../providers/favorites_provider.dart';

class FavoritesTab extends StatefulWidget {
  const FavoritesTab({super.key});

  @override
  State<FavoritesTab> createState() => _FavoritesTabState();
}

class _FavoritesTabState extends State<FavoritesTab> {
  late FavoritesProvider listFavoritos;
  late ConfigProvider theme;

  void onHandler(int index) {
    listFavoritos.removeFavorite(index);
  }

  void onSwitch(value) {
    theme.setSwitch = value;
    if (value) {
      theme.setTheme = ThemeMode.dark;
    } else {
      theme.setTheme = ThemeMode.light;
    }
  }

  @override
  Widget build(BuildContext context) {
    listFavoritos = Provider.of<FavoritesProvider>(context);
    theme = Provider.of<ConfigProvider>(context);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(children: [
                const CircleAvatar(child: Text('P')),
                const SpacerComponent(size: 8, isHorizontal: true),
                const Text('Pedro Mota',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SpacerComponent(isFull: true),
                Switch(
                  value: theme.switchMode,
                  onChanged: onSwitch,
                ),
              ]),
            ),
          ),
          const SpacerComponent(),
          FavoritesListViewWidget(
            listFavoritos: listFavoritos,
            onHandler: onHandler,
          )
        ],
      ),
    );
  }
}
