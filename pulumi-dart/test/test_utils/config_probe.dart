import 'dart:convert';

import 'package:pulumi/src/config.dart';

class _ConfigHarness with ConfigMixin {
  @override
  final String projectName;

  _ConfigHarness(this.projectName) {
    initializeConfig();
  }
}

Future<void> main(List<String> args) async {
  final project = args.isNotEmpty ? args.first : 'project';
  final keys = args.length > 1 ? args.sublist(1) : const <String>[];

  final harness = _ConfigHarness(project);
  final values = <String, String?>{};
  final secrets = <String, bool>{};

  for (final key in keys) {
    values[key] = harness.getConfig(key);
    secrets[key] = harness.isConfigSecret(key);
  }

  final payload = <String, dynamic>{
    'project': project,
    'values': values,
    'secrets': secrets,
  };

  print(jsonEncode(payload));
}
