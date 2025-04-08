import 'package:ahmerportfolio/core/extension.dart';
import 'package:ahmerportfolio/providers/theme_provider.dart';
import 'package:ahmerportfolio/theme/theme.dart';
import 'package:ahmerportfolio/view/widget/hover_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  List<String> navItems = ['About', "Work", "Testimonials", "Contact"];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 80, left: 80, top: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "<<SMA>>",
                  style: context.headlineSmall?.copyWith(
                    color: context.colors.tertiary,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 24,
                    children: [
                      ...List.generate(navItems.length, (index) {
                        return HoverText(
                          text: navItems[index],
                          onPressed: () {},
                        );
                      }),
                      IconButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.resolveWith<Color>((states) {
                                if (states.contains(WidgetState.hovered)) {
                                  return Colors.blueGrey; // Text Color on Hover
                                }
                                return Colors.transparent; // Default Text Color
                              }),
                        ),
                        onPressed: () {
                          context.read<ThemeProvider>().toggleThemeMode(
                            isLightMode:
                                !context.read<ThemeProvider>().isLightMode,
                          );
                        },
                        icon: Icon(
                          Icons.add,
                          color: context.colors.tertiary,
                          size: 20,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                          ),

                          backgroundColor:
                              WidgetStateProperty.resolveWith<Color>((states) {
                                if (states.contains(WidgetState.hovered)) {
                                  return Colors.blueGrey; // Text Color on Hover
                                }
                                return context
                                    .colors
                                    .tertiary; // Default Text Color
                              }),
                        ),

                        onPressed: () {},
                        child: Text(
                          "Download CV",
                          style: context.bodyLarge?.copyWith(
                            color: context.colors.surface,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
