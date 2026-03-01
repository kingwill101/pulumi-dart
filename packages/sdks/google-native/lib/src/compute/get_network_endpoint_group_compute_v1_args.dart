// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_network_endpoint_group_compute_v1_args_doc}
/// Arguments for getNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_network_endpoint_group_compute_v1_args_doc}
class GetNetworkEndpointGroupComputeV1Args {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNetworkEndpointGroupComputeV1Args].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetNetworkEndpointGroupComputeV1Args({
    required pulumi.Output<String> networkEndpointGroup,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      networkEndpointGroup = pulumi.Input.asInput<String>(networkEndpointGroup),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEndpointGroup': networkEndpointGroup,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetNetworkEndpointGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupComputeV1Args(
      networkEndpointGroup: pulumi.Output.create<String>(map['networkEndpointGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

