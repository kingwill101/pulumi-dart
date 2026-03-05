// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_floating_ip_floating_ip_args_doc}
/// The set of arguments for FloatingIp.
/// {@endtemplate}
/// {@macro pulumi_index_floating_ip_floating_ip_args_doc}
class FloatingIpArgs {
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// Description of the Floating IP.
  final pulumi.Input<String>? description;
  /// Name of home location (routing is optimized for that location). Optional if `server_id` argument is passed.
  final pulumi.Input<String>? homeLocation;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Floating IP.
  final pulumi.Input<String>? name;
  /// Server to assign the Floating IP to. Optional if `home_location` argument is passed.
  final pulumi.Input<int>? serverId;
  /// Type of the Floating IP. `ipv4` `ipv6`
  final pulumi.Input<String> type;

  /// Creates a new [FloatingIpArgs].
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [description] Description of the Floating IP.
  /// [homeLocation] Name of home location (routing is optimized for that location). Optional if `server_id` argument is passed.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Floating IP.
  /// [serverId] Server to assign the Floating IP to. Optional if `home_location` argument is passed.
  /// [type] Type of the Floating IP. `ipv4` `ipv6`
  FloatingIpArgs({
    this.deleteProtection,
    this.description,
    this.homeLocation,
    this.labels,
    this.name,
    this.serverId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'description': ?description,
      'homeLocation': ?homeLocation,
      'labels': ?labels,
      'name': ?name,
      'serverId': ?serverId,
      'type': type,
    };
  }

  factory FloatingIpArgs.fromMap(Map<String, dynamic> map) {
    return FloatingIpArgs(
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeLocation: (() { final guardedValue = map['homeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

