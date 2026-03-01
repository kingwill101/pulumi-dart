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
    pulumi.Output<String>? created,
    pulumi.Output<int>? entityId,
    pulumi.Output<String>? entityType,
    pulumi.Output<int>? firewallId,
    pulumi.Output<String>? updated,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      entityId = pulumi.Input.asOptionalInput<int>(entityId),
      entityType = pulumi.Input.asOptionalInput<String>(entityType),
      firewallId = pulumi.Input.asOptionalInput<int>(firewallId),
      updated = pulumi.Input.asOptionalInput<String>(updated);

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
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      entityId: map['entityId'] == null ? null : pulumi.Output.create<int>(map['entityId'] as int),
      entityType: map['entityType'] == null ? null : pulumi.Output.create<String>(map['entityType'] as String),
      firewallId: map['firewallId'] == null ? null : pulumi.Output.create<int>(map['firewallId'] as int),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
    );
  }
}

