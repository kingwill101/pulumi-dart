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
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<String>? description,
    pulumi.Output<String>? homeLocation,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? ipNetwork,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<int>? serverId,
    pulumi.Output<String>? type,
  }) :
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      homeLocation = pulumi.Input.asOptionalInput<String>(homeLocation),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipNetwork = pulumi.Input.asOptionalInput<String>(ipNetwork),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asOptionalInput<int>(serverId),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      homeLocation: map['homeLocation'] == null ? null : pulumi.Output.create<String>(map['homeLocation'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipNetwork: map['ipNetwork'] == null ? null : pulumi.Output.create<String>(map['ipNetwork'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

