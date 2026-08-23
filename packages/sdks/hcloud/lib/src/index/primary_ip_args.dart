// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_primary_ip_primary_ip_args_doc}
/// The set of arguments for PrimaryIp.
/// {@endtemplate}
/// {@macro pulumi_index_primary_ip_primary_ip_args_doc}
class PrimaryIpArgs {
  /// ID of the resource the Primary IP should be assigned to.
  final pulumi.Input<int>? assigneeId;
  /// Type of the resource the Primary IP should be assigned to.
  final pulumi.Input<String>? assigneeType;
  /// Whether auto delete is enabled. Setting `autoDelete` to `true` is not recommended, because if a server assigned to the managed ip is deleted, it will also delete the primary IP which will break the terraform state.
  final pulumi.Input<bool>? autoDelete;
  /// Name of the Datacenter for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  final pulumi.Input<String>? datacenter;
  /// Whether delete protection is enabled.
  final pulumi.Input<bool>? deleteProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Location for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the Primary IP.
  final pulumi.Input<String>? name;
  /// Type of the Primary IP (`ipv4` or `ipv6`).
  final pulumi.Input<String> type;

  /// Creates a new [PrimaryIpArgs].
  /// [assigneeId] ID of the resource the Primary IP should be assigned to.
  /// [assigneeType] Type of the resource the Primary IP should be assigned to.
  /// [autoDelete] Whether auto delete is enabled. Setting `autoDelete` to `true` is not recommended, because if a server assigned to the managed ip is deleted, it will also delete the primary IP which will break the terraform state.
  /// [datacenter] Name of the Datacenter for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Primary IP.
  /// [type] Type of the Primary IP (`ipv4` or `ipv6`).
  const PrimaryIpArgs({
    this.assigneeId,
    this.assigneeType,
    this.autoDelete,
    this.datacenter,
    this.deleteProtection,
    this.labels,
    this.location,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': ?assigneeId,
      'assigneeType': ?assigneeType,
      'autoDelete': ?autoDelete,
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
      assigneeId: (() { final guardedValue = map['assigneeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      assigneeType: (() { final guardedValue = map['assigneeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      datacenter: (() { final guardedValue = map['datacenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
