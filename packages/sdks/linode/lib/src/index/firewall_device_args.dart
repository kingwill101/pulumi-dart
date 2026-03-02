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
    required this.entityId,
    this.entityType,
    required this.firewallId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityType': ?entityType,
      'firewallId': firewallId,
    };
  }

  factory FirewallDeviceArgs.fromMap(Map<String, dynamic> map) {
    return FirewallDeviceArgs(
      entityId: (map['entityId'] as int).input(),
      entityType: map['entityType'] == null ? null : (map['entityType'] as String).input(),
      firewallId: (map['firewallId'] as int).input(),
    );
  }
}

