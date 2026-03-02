// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallDevice resources.
class FirewallDeviceState {
  /// When the Firewall Device was last created.
  final pulumi.Input<String>? created;
  /// The unique ID of the entity to attach.
  final pulumi.Input<int>? entityId;
  /// The type of the entity to attach. (default: `linode`)
  final pulumi.Input<String>? entityType;
  /// The unique ID of the target Firewall.
  final pulumi.Input<int>? firewallId;
  /// When the Firewall Device was last updated.
  final pulumi.Input<String>? updated;

  /// Creates a new [FirewallDeviceState].
  /// [created] When the Firewall Device was last created.
  /// [entityId] The unique ID of the entity to attach.
  /// [entityType] The type of the entity to attach. (default: `linode`)
  /// [firewallId] The unique ID of the target Firewall.
  /// [updated] When the Firewall Device was last updated.
  FirewallDeviceState({
    this.created,
    this.entityId,
    this.entityType,
    this.firewallId,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'entityId': ?entityId,
      'entityType': ?entityType,
      'firewallId': ?firewallId,
      'updated': ?updated,
    };
  }

  factory FirewallDeviceState.fromMap(Map<String, dynamic> map) {
    return FirewallDeviceState(
      created: map['created'] == null ? null : (map['created'] as String).input(),
      entityId: map['entityId'] == null ? null : (map['entityId'] as int).input(),
      entityType: map['entityType'] == null ? null : (map['entityType'] as String).input(),
      firewallId: map['firewallId'] == null ? null : (map['firewallId'] as int).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
    );
  }
}

