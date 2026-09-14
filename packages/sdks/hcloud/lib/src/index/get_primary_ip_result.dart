// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrimaryIp.
class GetPrimaryIpResult {
  /// ID of the resource the Primary IP is assigned to.
  final int? assigneeId;
  /// Type of the resource the Primary IP is assigned to.
  final String? assigneeType;
  /// Whether auto delete is enabled.
  final bool? autoDelete;
  /// Name of the Datacenter of the Primary IP.
  final String? datacenter;
  /// Whether delete protection is enabled.
  final bool? deleteProtection;
  /// ID of the Primary IP.
  final int? id;
  /// IP address of the Primary IP.
  final String? ipAddress;
  /// IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  final String? ipNetwork;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String>? labels;
  /// Name of the Location of the Primary IP.
  final String? location;
  /// Name of the Primary IP.
  final String? name;
  /// Type of the Primary IP (`ipv4` or `ipv6`).
  final String? type;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? withSelector;

  /// Creates a new [GetPrimaryIpResult].
  /// [assigneeId] ID of the resource the Primary IP is assigned to.
  /// [assigneeType] Type of the resource the Primary IP is assigned to.
  /// [autoDelete] Whether auto delete is enabled.
  /// [datacenter] Name of the Datacenter of the Primary IP.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [id] ID of the Primary IP.
  /// [ipAddress] IP address of the Primary IP.
  /// [ipNetwork] IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location of the Primary IP.
  /// [name] Name of the Primary IP.
  /// [type] Type of the Primary IP (`ipv4` or `ipv6`).
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  const GetPrimaryIpResult({
    this.assigneeId,
    this.assigneeType,
    this.autoDelete,
    this.datacenter,
    this.deleteProtection,
    this.id,
    this.ipAddress,
    this.ipNetwork,
    this.labels,
    this.location,
    this.name,
    this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': ?assigneeId,
      'assigneeType': ?assigneeType,
      'autoDelete': ?autoDelete,
      'datacenter': ?datacenter,
      'deleteProtection': ?deleteProtection,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'ipNetwork': ?ipNetwork,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'type': ?type,
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpResult.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpResult(
      assigneeId: (() { final guardedValue = map['assigneeId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      assigneeType: (() { final guardedValue = map['assigneeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      datacenter: (() { final guardedValue = map['datacenter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipNetwork: (() { final guardedValue = map['ipNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
