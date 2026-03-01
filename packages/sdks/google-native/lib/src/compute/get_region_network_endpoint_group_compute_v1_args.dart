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
  GetRegionNetworkEndpointGroupComputeV1Args({
    required pulumi.Output<String> networkEndpointGroup,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      networkEndpointGroup = pulumi.Input.asInput<String>(networkEndpointGroup),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEndpointGroup': networkEndpointGroup,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionNetworkEndpointGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupComputeV1Args(
      networkEndpointGroup: pulumi.Output.create<String>(map['networkEndpointGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

