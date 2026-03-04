// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_url_map_compute_beta_args_doc}
/// Arguments for getUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_url_map_compute_beta_args_doc}
class GetUrlMapComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetUrlMapComputeBetaArgs].
  /// [project] Optional.
  /// [urlMap] Required.
  GetUrlMapComputeBetaArgs({this.project, required this.urlMap});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'urlMap': urlMap};
  }

  factory GetUrlMapComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlMapComputeBetaArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      urlMap: pulumi.Input.fromValue(map['urlMap'] as String),
    );
  }
}
