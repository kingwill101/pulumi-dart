// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_url_map_compute_beta_args_doc}
/// Arguments for getRegionUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_url_map_compute_beta_args_doc}
class GetRegionUrlMapComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetRegionUrlMapComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [urlMap] Required.
  const GetRegionUrlMapComputeBetaArgs({
    this.project,
    required this.region,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'urlMap': urlMap,
    };
  }

  factory GetRegionUrlMapComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionUrlMapComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      urlMap: pulumi.Input.fromValue(map['urlMap'] as String),
    );
  }
}

