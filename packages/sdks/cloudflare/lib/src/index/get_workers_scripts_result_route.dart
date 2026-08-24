// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersScriptsResultRoute {
  /// Identifier.
  final pulumi.Input<String> id;
  /// Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  final pulumi.Input<String> pattern;
  /// Name of the script to run if the route matches.
  final pulumi.Input<String> script;

  /// Creates a new [GetWorkersScriptsResultRoute].
  /// [id] Identifier.
  /// [pattern] Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  /// [script] Name of the script to run if the route matches.
  const GetWorkersScriptsResultRoute({
    required this.id,
    required this.pattern,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pattern': pattern,
      'script': script,
    };
  }

  factory GetWorkersScriptsResultRoute.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultRoute(
      id: pulumi.Input.fromValue(map['id'] as String),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
    );
  }
}
