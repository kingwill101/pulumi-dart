// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_vmware_engine_network_args_doc}
/// Arguments for getVmwareEngineNetwork.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_vmware_engine_network_args_doc}
class GetVmwareEngineNetworkArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareEngineNetworkId;

  /// Creates a new [GetVmwareEngineNetworkArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [vmwareEngineNetworkId] Required.
  GetVmwareEngineNetworkArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> vmwareEngineNetworkId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      vmwareEngineNetworkId = pulumi.Input.asInput<String>(vmwareEngineNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'vmwareEngineNetworkId': vmwareEngineNetworkId,
    };
  }

  factory GetVmwareEngineNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareEngineNetworkArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vmwareEngineNetworkId: pulumi.Output.create<String>(map['vmwareEngineNetworkId'] as String),
    );
  }
}

