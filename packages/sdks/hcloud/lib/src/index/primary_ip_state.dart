// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrimaryIp resources.
class PrimaryIpState {
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
  /// IP address of the Primary IP.
  final pulumi.Input<String>? ipAddress;
  /// IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  final pulumi.Input<String>? ipNetwork;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Location for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the Primary IP.
  final pulumi.Input<String>? name;
  /// Type of the Primary IP (`ipv4` or `ipv6`).
  final pulumi.Input<String>? type;

  /// Creates a new [PrimaryIpState].
  /// [assigneeId] ID of the resource the Primary IP should be assigned to.
  /// [assigneeType] Type of the resource the Primary IP should be assigned to.
  /// [autoDelete] Whether auto delete is enabled. Setting `autoDelete` to `true` is not recommended, because if a server assigned to the managed ip is deleted, it will also delete the primary IP which will break the terraform state.
  /// [datacenter] Name of the Datacenter for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [ipAddress] IP address of the Primary IP.
  /// [ipNetwork] IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location for the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Primary IP.
  /// [type] Type of the Primary IP (`ipv4` or `ipv6`).
  const PrimaryIpState({
    this.assigneeId,
    this.assigneeType,
    this.autoDelete,
    this.datacenter,
    this.deleteProtection,
    this.ipAddress,
    this.ipNetwork,
    this.labels,
    this.location,
    this.name,
    this.type,
  });

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
      assigneeId: (() { final guardedValue = map['assigneeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      assigneeType: (() { final guardedValue = map['assigneeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      datacenter: (() { final guardedValue = map['datacenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipNetwork: (() { final guardedValue = map['ipNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
