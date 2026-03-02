// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FloatingIp resources.
class FloatingIpState {
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// Description of the Floating IP.
  final pulumi.Input<String>? description;
  /// Name of home location (routing is optimized for that location). Optional if `server_id` argument is passed.
  final pulumi.Input<String>? homeLocation;
  /// (string) IP Address of the Floating IP.
  final pulumi.Input<String>? ipAddress;
  /// (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  final pulumi.Input<String>? ipNetwork;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Floating IP.
  final pulumi.Input<String>? name;
  /// Server to assign the Floating IP to. Optional if `home_location` argument is passed.
  final pulumi.Input<int>? serverId;
  /// Type of the Floating IP. `ipv4` `ipv6`
  final pulumi.Input<String>? type;

  /// Creates a new [FloatingIpState].
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [description] Description of the Floating IP.
  /// [homeLocation] Name of home location (routing is optimized for that location). Optional if `server_id` argument is passed.
  /// [ipAddress] (string) IP Address of the Floating IP.
  /// [ipNetwork] (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Floating IP.
  /// [serverId] Server to assign the Floating IP to. Optional if `home_location` argument is passed.
  /// [type] Type of the Floating IP. `ipv4` `ipv6`
  FloatingIpState({
    this.deleteProtection,
    this.description,
    this.homeLocation,
    this.ipAddress,
    this.ipNetwork,
    this.labels,
    this.name,
    this.serverId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'description': ?description,
      'homeLocation': ?homeLocation,
      'ipAddress': ?ipAddress,
      'ipNetwork': ?ipNetwork,
      'labels': ?labels,
      'name': ?name,
      'serverId': ?serverId,
      'type': ?type,
    };
  }

  factory FloatingIpState.fromMap(Map<String, dynamic> map) {
    return FloatingIpState(
      deleteProtection: map['deleteProtection'] == null ? null : (map['deleteProtection']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      homeLocation: map['homeLocation'] == null ? null : (map['homeLocation']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      ipNetwork: map['ipNetwork'] == null ? null : (map['ipNetwork']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

