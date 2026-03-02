// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnetIdsV2.
class GetSubnetIdsV2Result {
  final String? cidr;
  final String? description;
  final bool? dhcpEnabled;
  final bool? dnsPublishFixedIp;
  final String? gatewayIp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final int? ipVersion;
  final String? ipv6AddressMode;
  final String ipv6RaMode;
  final String? name;
  final String? nameRegex;
  final String? networkId;
  final String region;
  final String? segmentId;
  final String? sortDirection;
  final String? sortKey;
  final String? subnetpoolId;
  final List<String>? tags;
  final String? tenantId;

  /// Creates a new [GetSubnetIdsV2Result].
  /// [cidr] Optional.
  /// [description] Optional.
  /// [dhcpEnabled] Optional.
  /// [dnsPublishFixedIp] Optional.
  /// [gatewayIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ipVersion] Optional.
  /// [ipv6AddressMode] Optional.
  /// [ipv6RaMode] Required.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [networkId] Optional.
  /// [region] Required.
  /// [segmentId] Optional.
  /// [sortDirection] Optional.
  /// [sortKey] Optional.
  /// [subnetpoolId] Optional.
  /// [tags] Optional.
  /// [tenantId] Optional.
  GetSubnetIdsV2Result({
    this.cidr,
    this.description,
    this.dhcpEnabled,
    this.dnsPublishFixedIp,
    this.gatewayIp,
    required this.id,
    required this.ids,
    this.ipVersion,
    this.ipv6AddressMode,
    required this.ipv6RaMode,
    this.name,
    this.nameRegex,
    this.networkId,
    required this.region,
    this.segmentId,
    this.sortDirection,
    this.sortKey,
    this.subnetpoolId,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'dhcpEnabled': ?dhcpEnabled,
      'dnsPublishFixedIp': ?dnsPublishFixedIp,
      'gatewayIp': ?gatewayIp,
      'id': id,
      'ids': ids,
      'ipVersion': ?ipVersion,
      'ipv6AddressMode': ?ipv6AddressMode,
      'ipv6RaMode': ipv6RaMode,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'networkId': ?networkId,
      'region': region,
      'segmentId': ?segmentId,
      'sortDirection': ?sortDirection,
      'sortKey': ?sortKey,
      'subnetpoolId': ?subnetpoolId,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetSubnetIdsV2Result.fromMap(Map<String, dynamic> map) {
    return GetSubnetIdsV2Result(
      cidr: map['cidr'] == null ? null : map['cidr']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      dhcpEnabled: map['dhcpEnabled'] == null ? null : map['dhcpEnabled']! as bool,
      dnsPublishFixedIp: map['dnsPublishFixedIp'] == null ? null : map['dnsPublishFixedIp']! as bool,
      gatewayIp: map['gatewayIp'] == null ? null : map['gatewayIp']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion']! as int,
      ipv6AddressMode: map['ipv6AddressMode'] == null ? null : map['ipv6AddressMode']! as String,
      ipv6RaMode: map['ipv6RaMode'] as String,
      name: map['name'] == null ? null : map['name']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      networkId: map['networkId'] == null ? null : map['networkId']! as String,
      region: map['region'] as String,
      segmentId: map['segmentId'] == null ? null : map['segmentId']! as String,
      sortDirection: map['sortDirection'] == null ? null : map['sortDirection']! as String,
      sortKey: map['sortKey'] == null ? null : map['sortKey']! as String,
      subnetpoolId: map['subnetpoolId'] == null ? null : map['subnetpoolId']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId']! as String,
    );
  }
}

