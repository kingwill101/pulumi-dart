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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      vmwareEngineNetworkId: (map['vmwareEngineNetworkId'] as String).input(),
    );
  }
}

