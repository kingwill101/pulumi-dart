import 'dart:convert';

import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/deployment/deployment.dart';

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    throw ArgumentError('expected probe mode');
  }

  final mode = args.first;
  switch (mode) {
    case 'run-success':
      final exitCode = await DeploymentImpl.run(() {});
      print(jsonEncode({'mode': mode, 'exitCode': exitCode}));
      return;
    case 'run-catch-error':
      final exitCode = await DeploymentImpl.run(() {
        throw StateError('probe failure');
      });
      print(jsonEncode({'mode': mode, 'exitCode': exitCode}));
      return;
    case 'run-or-throw':
      try {
        await Deployment.runOrThrow(() {
          throw StateError('probe failure');
        });
        print(jsonEncode({'mode': mode, 'threw': false}));
      } catch (e) {
        print(
          jsonEncode({
            'mode': mode,
            'threw': true,
            'type': e.runtimeType.toString(),
            'message': e.toString(),
          }),
        );
      }
      return;
    case 'run-capture-error':
      try {
        await DeploymentImpl.run(() {});
        print(jsonEncode({'mode': mode, 'threw': false}));
      } catch (e) {
        print(
          jsonEncode({
            'mode': mode,
            'threw': true,
            'type': e.runtimeType.toString(),
            'message': e.toString(),
          }),
        );
      }
      return;
    default:
      throw ArgumentError('unsupported probe mode: $mode');
  }
}
