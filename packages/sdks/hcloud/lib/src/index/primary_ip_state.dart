// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrimaryIp resources.
class PrimaryIpState {
  /// ID of the assigned resource.
  final pulumi.Input<int>? assigneeId;
  /// The type of the assigned resource. Currently supported: `server`
  final pulumi.Input<String>? assigneeType;
  /// Whether auto delete is enabled.
  /// `Important note:`It is recommended to set `auto_delete` to `false`, because if a server assigned to the managed ip is getting deleted, it will also delete the primary IP which will break the TF state.
  final pulumi.Input<bool>? autoDelete;
  /// The datacenter name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  final pulumi.Input<String>? datacenter;
  /// Whether delete protection is enabled. See "Delete Protection" in the Provider Docs for details.
  ///
  /// Note: At least one of `location`, `datacenter` or `assignee_id` is required.
  final pulumi.Input<bool>? deleteProtection;
  /// (string) IP Address of the Primary IP.
  final pulumi.Input<String>? ipAddress;
  /// (string) IPv6 subnet of the Primary IP for IPv6 addresses. (Only set if `type` is `ipv6`)
  final pulumi.Input<String>? ipNetwork;
  /// User-defined labels (key-value pairs).
  final pulumi.Input<Map<String, String>>? labels;
  /// The location name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the Primary IP.
  final pulumi.Input<String>? name;
  /// Type of the Primary IP. `ipv4` or `ipv6`
  final pulumi.Input<String>? type;

  /// Creates a new [PrimaryIpState].
  /// [assigneeId] ID of the assigned resource.
  /// [assigneeType] The type of the assigned resource. Currently supported: `server`
  /// [autoDelete] Whether auto delete is enabled.
  /// [datacenter] The datacenter name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] Whether delete protection is enabled. See "Delete Protection" in the Provider Docs for details.
  /// [ipAddress] (string) IP Address of the Primary IP.
  /// [ipNetwork] (string) IPv6 subnet of the Primary IP for IPv6 addresses. (Only set if `type` is `ipv6`)
  /// [labels] User-defined labels (key-value pairs).
  /// [location] The location name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Primary IP.
  /// [type] Type of the Primary IP. `ipv4` or `ipv6`
  PrimaryIpState({
    pulumi.Output<int>? assigneeId,
    pulumi.Output<String>? assigneeType,
    pulumi.Output<bool>? autoDelete,
    pulumi.Output<String>? datacenter,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? ipNetwork,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? type,
  }) :
      assigneeId = pulumi.Input.asOptionalInput<int>(assigneeId),
      assigneeType = pulumi.Input.asOptionalInput<String>(assigneeType),
      autoDelete = pulumi.Input.asOptionalInput<bool>(autoDelete),
      datacenter = pulumi.Input.asOptionalInput<String>(datacenter),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipNetwork = pulumi.Input.asOptionalInput<String>(ipNetwork),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': ?assigneeId,
      'assigneeType': ?assigneeType,
      'autoDelete': ?autoDelete,
      'datacenter': ?datacenter,
      'deleteProtection': ?deleteProtection,
      'ipAddress': ?ipAddress,
      'ipNetwork': ?ipNetwork,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'type': ?type,
    };
  }

  factory PrimaryIpState.fromMap(Map<String, dynamic> map) {
    return PrimaryIpState(
      assigneeId: map['assigneeId'] == null ? null : pulumi.Output.create<int>(map['assigneeId'] as int),
      assigneeType: map['assigneeType'] == null ? null : pulumi.Output.create<String>(map['assigneeType'] as String),
      autoDelete: map['autoDelete'] == null ? null : pulumi.Output.create<bool>(map['autoDelete'] as bool),
      datacenter: map['datacenter'] == null ? null : pulumi.Output.create<String>(map['datacenter'] as String),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipNetwork: map['ipNetwork'] == null ? null : pulumi.Output.create<String>(map['ipNetwork'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

