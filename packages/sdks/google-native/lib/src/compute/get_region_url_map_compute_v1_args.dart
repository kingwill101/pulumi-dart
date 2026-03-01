// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_url_map_compute_v1_args_doc}
/// Arguments for getRegionUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_url_map_compute_v1_args_doc}
class GetRegionUrlMapComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> urlMap;

  /// Creates a new [GetRegionUrlMapComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [urlMap] Required.
  GetRegionUrlMapComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> urlMap,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'urlMap': urlMap,
    };
  }

  factory GetRegionUrlMapComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionUrlMapComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      urlMap: pulumi.Output.create<String>(map['urlMap'] as String),
    );
  }
}

