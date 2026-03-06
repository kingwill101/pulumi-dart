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
  const GetVmwareEngineNetworkArgs({
    required this.location,
    this.project,
    required this.vmwareEngineNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'vmwareEngineNetworkId': vmwareEngineNetworkId,
    };
  }

  factory GetVmwareEngineNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareEngineNetworkArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareEngineNetworkId: pulumi.Input.fromValue(map['vmwareEngineNetworkId'] as String),
    );
  }
}

