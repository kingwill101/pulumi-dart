// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_interface_attach_interface_attach_args_doc}
/// The set of arguments for InterfaceAttach.
/// {@endtemplate}
/// {@macro pulumi_compute_interface_attach_interface_attach_args_doc}
class InterfaceAttachArgs {
  /// An IP address to assosciate with the port.
  /// _NOTE_: This option cannot be used with port_id. You must specifiy a network_id. The IP address must lie in a range on the supplied network.
  final pulumi.Input<String>? fixedIp;
  /// The ID of the Instance to attach the Port or Network to.
  final pulumi.Input<String> instanceId;
  /// The ID of the Network to attach to an Instance. A port will be created automatically.
  /// _NOTE_: This option and `port_id` are mutually exclusive.
  final pulumi.Input<String>? networkId;
  /// The ID of the Port to attach to an Instance.
  /// _NOTE_: This option and `network_id` are mutually exclusive.
  final pulumi.Input<String>? portId;
  /// The region in which to create the interface attachment.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new attachment.
  final pulumi.Input<String>? region;

  /// Creates a new [InterfaceAttachArgs].
  /// [fixedIp] An IP address to assosciate with the port.
  /// [instanceId] The ID of the Instance to attach the Port or Network to.
  /// [networkId] The ID of the Network to attach to an Instance. A port will be created automatically.
  /// [portId] The ID of the Port to attach to an Instance.
  /// [region] The region in which to create the interface attachment.
  InterfaceAttachArgs({
    this.fixedIp,
    required this.instanceId,
    this.networkId,
    this.portId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIp': ?fixedIp,
      'instanceId': instanceId,
      'networkId': ?networkId,
      'portId': ?portId,
      'region': ?region,
    };
  }

  factory InterfaceAttachArgs.fromMap(Map<String, dynamic> map) {
    return InterfaceAttachArgs(
      fixedIp: (() { final guardedValue = map['fixedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

