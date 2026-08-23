// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrimaryIp.
class GetPrimaryIpResult {
  /// ID of the resource the Primary IP is assigned to.
  final int assigneeId;
  /// Type of the resource the Primary IP is assigned to.
  final String assigneeType;
  /// Whether auto delete is enabled.
  final bool autoDelete;
  /// Name of the Datacenter of the Primary IP.
  final String datacenter;
  /// Whether delete protection is enabled.
  final bool deleteProtection;
  /// ID of the Primary IP.
  final int? id;
  /// IP address of the Primary IP.
  final String? ipAddress;
  /// IP network of the Primary IP for IPv6 addresses. Only set if `type` is `ipv6`.
  final String ipNetwork;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Name of the Location of the Primary IP.
  final String location;
  /// Name of the Primary IP.
  final String? name;
  /// Type of the Primary IP (`ipv4` or `ipv6`).
  final String type;
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
    required this.assigneeId,
    required this.assigneeType,
    required this.autoDelete,
    required this.datacenter,
    required this.deleteProtection,
    this.id,
    this.ipAddress,
    required this.ipNetwork,
    required this.labels,
    required this.location,
    this.name,
    required this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': assigneeId,
      'assigneeType': assigneeType,
      'autoDelete': autoDelete,
      'datacenter': datacenter,
      'deleteProtection': deleteProtection,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'ipNetwork': ipNetwork,
      'labels': labels,
      'location': location,
      'name': ?name,
      'type': type,
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpResult.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpResult(
      assigneeId: map['assigneeId'] as int,
      assigneeType: map['assigneeType'] as String,
      autoDelete: map['autoDelete'] as bool,
      datacenter: map['datacenter'] as String,
      deleteProtection: map['deleteProtection'] as bool,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as int; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipNetwork: map['ipNetwork'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
