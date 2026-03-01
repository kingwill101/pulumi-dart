// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_network_endpoint_group_compute_beta_args_doc}
/// Arguments for getRegionNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_network_endpoint_group_compute_beta_args_doc}
class GetRegionNetworkEndpointGroupComputeBetaArgs {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionNetworkEndpointGroupComputeBetaArgs].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionNetworkEndpointGroupComputeBetaArgs({
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

  factory GetRegionNetworkEndpointGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupComputeBetaArgs(
      networkEndpointGroup: pulumi.Output.create<String>(map['networkEndpointGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

