// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_url_map_args_doc}
/// Arguments for getUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_url_map_args_doc}
class GetUrlMapArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetUrlMapArgs].
  /// [project] Optional.
  /// [urlMap] Required.
  const GetUrlMapArgs({
    this.project,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'urlMap': urlMap,
    };
  }

  factory GetUrlMapArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlMapArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlMap: pulumi.Input.fromValue(map['urlMap'] as String),
    );
  }
}
