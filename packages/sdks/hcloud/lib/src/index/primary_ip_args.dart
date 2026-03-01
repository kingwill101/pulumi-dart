// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_primary_ip_primary_ip_args_doc}
/// The set of arguments for PrimaryIp.
/// {@endtemplate}
/// {@macro pulumi_index_primary_ip_primary_ip_args_doc}
class PrimaryIpArgs {
  /// ID of the assigned resource.
  final pulumi.Input<int>? assigneeId;
  /// The type of the assigned resource. Currently supported: `server`
  final pulumi.Input<String> assigneeType;
  /// Whether auto delete is enabled.
  /// `Important note:`It is recommended to set `auto_delete` to `false`, because if a server assigned to the managed ip is getting deleted, it will also delete the primary IP which will break the TF state.
  final pulumi.Input<bool> autoDelete;
  /// The datacenter name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  final pulumi.Input<String>? datacenter;
  /// Whether delete protection is enabled. See "Delete Protection" in the Provider Docs for details.
  ///
  /// Note: At least one of `location`, `datacenter` or `assignee_id` is required.
  final pulumi.Input<bool>? deleteProtection;
  /// User-defined labels (key-value pairs).
  final pulumi.Input<Map<String, String>>? labels;
  /// The location name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the Primary IP.
  final pulumi.Input<String>? name;
  /// Type of the Primary IP. `ipv4` or `ipv6`
  final pulumi.Input<String> type;

  /// Creates a new [PrimaryIpArgs].
  /// [assigneeId] ID of the assigned resource.
  /// [assigneeType] The type of the assigned resource. Currently supported: `server`
  /// [autoDelete] Whether auto delete is enabled.
  /// [datacenter] The datacenter name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] Whether delete protection is enabled. See "Delete Protection" in the Provider Docs for details.
  /// [labels] User-defined labels (key-value pairs).
  /// [location] The location name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Primary IP.
  /// [type] Type of the Primary IP. `ipv4` or `ipv6`
  PrimaryIpArgs({
    pulumi.Output<int>? assigneeId,
    required pulumi.Output<String> assigneeType,
    required pulumi.Output<bool> autoDelete,
    pulumi.Output<String>? datacenter,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> type,
  }) :
      assigneeId = pulumi.Input.asOptionalInput<int>(assigneeId),
      assigneeType = pulumi.Input.asInput<String>(assigneeType),
      autoDelete = pulumi.Input.asInput<bool>(autoDelete),
      datacenter = pulumi.Input.asOptionalInput<String>(datacenter),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': ?assigneeId,
      'assigneeType': assigneeType,
      'autoDelete': autoDelete,
      'datacenter': ?datacenter,
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'type': type,
    };
  }

  factory PrimaryIpArgs.fromMap(Map<String, dynamic> map) {
    return PrimaryIpArgs(
      assigneeId: map['assigneeId'] == null ? null : pulumi.Output.create<int>(map['assigneeId'] as int),
      assigneeType: pulumi.Output.create<String>(map['assigneeType'] as String),
      autoDelete: pulumi.Output.create<bool>(map['autoDelete'] as bool),
      datacenter: map['datacenter'] == null ? null : pulumi.Output.create<String>(map['datacenter'] as String),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

