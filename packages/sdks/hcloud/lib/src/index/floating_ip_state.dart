// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FloatingIp resources.
class FloatingIpState {
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// Description of the Floating IP.
  final pulumi.Input<String>? description;
  /// Name of home location (routing is optimized for that location). Optional if `serverId` argument is passed.
  final pulumi.Input<String>? homeLocation;
  /// (string) IP Address of the Floating IP.
  final pulumi.Input<String>? ipAddress;
  /// (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  final pulumi.Input<String>? ipNetwork;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Floating IP.
  final pulumi.Input<String>? name;
  /// Server to assign the Floating IP to. Optional if `homeLocation` argument is passed.
  final pulumi.Input<int>? serverId;
  /// Type of the Floating IP. `ipv4` `ipv6`
  final pulumi.Input<String>? type;

  /// Creates a new [FloatingIpState].
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [description] Description of the Floating IP.
  /// [homeLocation] Name of home location (routing is optimized for that location). Optional if `serverId` argument is passed.
  /// [ipAddress] (string) IP Address of the Floating IP.
  /// [ipNetwork] (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Floating IP.
  /// [serverId] Server to assign the Floating IP to. Optional if `homeLocation` argument is passed.
  /// [type] Type of the Floating IP. `ipv4` `ipv6`
  const FloatingIpState({
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
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeLocation: (() { final guardedValue = map['homeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipNetwork: (() { final guardedValue = map['ipNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
