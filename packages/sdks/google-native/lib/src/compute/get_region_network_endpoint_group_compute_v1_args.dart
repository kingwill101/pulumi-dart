// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_network_endpoint_group_compute_v1_args_doc}
/// Arguments for getRegionNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_network_endpoint_group_compute_v1_args_doc}
class GetRegionNetworkEndpointGroupComputeV1Args {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNetworkEndpointGroupComputeV1Args].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionNetworkEndpointGroupComputeV1Args({
    required this.networkEndpointGroup,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEndpointGroup': networkEndpointGroup,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNetworkEndpointGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupComputeV1Args(
      networkEndpointGroup: pulumi.Input.fromValue(map['networkEndpointGroup'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
