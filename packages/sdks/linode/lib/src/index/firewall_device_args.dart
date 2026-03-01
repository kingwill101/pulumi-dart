// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_firewall_device_firewall_device_args_doc}
/// The set of arguments for FirewallDevice.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_device_firewall_device_args_doc}
class FirewallDeviceArgs {
  /// The unique ID of the entity to attach.
  final pulumi.Input<int> entityId;
  /// The type of the entity to attach. (default: `linode`)
  final pulumi.Input<String>? entityType;
  /// The unique ID of the target Firewall.
  final pulumi.Input<int> firewallId;

  /// Creates a new [FirewallDeviceArgs].
  /// [entityId] The unique ID of the entity to attach.
  /// [entityType] The type of the entity to attach. (default: `linode`)
  /// [firewallId] The unique ID of the target Firewall.
  FirewallDeviceArgs({
    required pulumi.Output<int> entityId,
    pulumi.Output<String>? entityType,
    required pulumi.Output<int> firewallId,
  }) :
      entityId = pulumi.Input.asInput<int>(entityId),
      entityType = pulumi.Input.asOptionalInput<String>(entityType),
      firewallId = pulumi.Input.asInput<int>(firewallId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityType': ?entityType,
      'firewallId': firewallId,
    };
  }

  factory FirewallDeviceArgs.fromMap(Map<String, dynamic> map) {
    return FirewallDeviceArgs(
      entityId: pulumi.Output.create<int>(map['entityId'] as int),
      entityType: map['entityType'] == null ? null : pulumi.Output.create<String>(map['entityType'] as String),
      firewallId: pulumi.Output.create<int>(map['firewallId'] as int),
    );
  }
}

