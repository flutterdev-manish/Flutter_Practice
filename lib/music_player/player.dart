import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'musicplayer.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.arrow_back)),
                  ),
                  // Text('N O W P L A Y I N G'),
                  Text(
                    'NOW PLAYING',
                    style: TextStyle(letterSpacing: 3, wordSpacing: 5),
                  ),

                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Thumbnail(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/PBX_1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'PBX 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Sidhu Moosewala',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('3:25'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:12')
                ],
              ),
              const SizedBox(height: 30),
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 4,
                  percent: 0.7,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: NeuBox(
                          child: Icon(
                        Icons.skip_previous,
                        size: 32,
                      )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: NeuBox(
                            child: Icon(
                          Icons.play_arrow,
                          size: 32,
                        )),
                      ),
                    ),
                    Expanded(
                      child: NeuBox(
                          child: Icon(
                        Icons.skip_next,
                        size: 32,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
