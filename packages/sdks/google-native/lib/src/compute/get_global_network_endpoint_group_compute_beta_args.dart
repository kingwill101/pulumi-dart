// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_global_network_endpoint_group_compute_beta_args_doc}
/// Arguments for getGlobalNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_global_network_endpoint_group_compute_beta_args_doc}
class GetGlobalNetworkEndpointGroupComputeBetaArgs {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalNetworkEndpointGroupComputeBetaArgs].
  /// [networkEndpointGroup] Required.
  /// [project] Optional.
  GetGlobalNetworkEndpointGroupComputeBetaArgs({
    required pulumi.Output<String> networkEndpointGroup,
    pulumi.Output<String>? project,
  }) :
      networkEndpointGroup = pulumi.Input.asInput<String>(networkEndpointGroup),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEndpointGroup': networkEndpointGroup,
      'project': ?project,
    };
  }

  factory GetGlobalNetworkEndpointGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkEndpointGroupComputeBetaArgs(
      networkEndpointGroup: pulumi.Output.create<String>(map['networkEndpointGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

