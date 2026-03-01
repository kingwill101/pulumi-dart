// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_node_devices_get_node_devices_args_doc}
/// Arguments for getNodeDevices.
/// {@endtemplate}
/// {@macro pulumi_index_get_node_devices_get_node_devices_args_doc}
class GetNodeDevicesArgs {
  final pulumi.Input<String>? capability;

  /// Creates a new [GetNodeDevicesArgs].
  /// [capability] Optional.
  GetNodeDevicesArgs({
    pulumi.Output<String>? capability,
  }) :
      capability = pulumi.Input.asOptionalInput<String>(capability);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capability': ?capability,
    };
  }

  factory GetNodeDevicesArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeDevicesArgs(
      capability: map['capability'] == null ? null : pulumi.Output.create<String>(map['capability'] as String),
    );
  }
}

