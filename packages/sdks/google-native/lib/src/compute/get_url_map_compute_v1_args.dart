// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_url_map_compute_v1_args_doc}
/// Arguments for getUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_url_map_compute_v1_args_doc}
class GetUrlMapComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetUrlMapComputeV1Args].
  /// [project] Optional.
  /// [urlMap] Required.
  GetUrlMapComputeV1Args({
    this.project,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'urlMap': urlMap,
    };
  }

  factory GetUrlMapComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetUrlMapComputeV1Args(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      urlMap: (map['urlMap'] as String).input(),
    );
  }
}

