import 'package:flutter/material.dart';

import '../../../config/app_color.dart';
import '../../../constants/assets_path.dart';
import '../../../models/movie.dart';

class TrailerBar extends StatelessWidget {
  const TrailerBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0]
            .trailers
            .map((e) => Builder(builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 24, bottom: 24),
                    child: Stack(
                      children: [
                        Container(
                          height: 160,
                          width: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage(e)),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 260,
                          decoration:
                              const BoxDecoration(
                                  color: Colors
                                      .black12),
                        ),
                        SizedBox(
                          height: 160,
                          width: 260,
                          child: Container(
                            margin: const EdgeInsets
                                    .symmetric(
                                vertical: 56),
                            decoration:
                                const BoxDecoration(
                              shape:
                                  BoxShape.circle,
                              color: DarkTheme
                                  .blueMain,
                            ),
                            child: const ImageIcon(
                              AssetImage(
                                AssetPath.iconPlay,
                              ),
                              color:
                                  DarkTheme.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }))
            .toList(),
      ),
    );
  }
}