// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_backend_service_compute_v1_args_doc}
/// Arguments for getRegionBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_backend_service_compute_v1_args_doc}
class GetRegionBackendServiceComputeV1Args {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionBackendServiceComputeV1Args].
  /// [backendService] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionBackendServiceComputeV1Args({
    required this.backendService,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionBackendServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceComputeV1Args(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
