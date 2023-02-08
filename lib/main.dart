import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:nayax_demo/core/service/articles_api_service.dart';
import 'package:provider/provider.dart';

import 'screens/articles_list_screen.dart';

void main() {
  ///Pre-run configs
  _setupLogging();

  ///Run
  runApp(
      MultiProvider(
        providers: [
          Provider(
            create: (_) => ArticlesApiService.create(),
            dispose: (_, ArticlesApiService service) => service.client.dispose(),
          ),
        ],
        child: const NayaxDemo(),
      )
  );
}

//Logger
void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    if (kDebugMode) {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    }
  });
}

class NayaxDemo extends StatelessWidget {
  const NayaxDemo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nayax Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ArticlesListScreen(),
    );
  }
}
