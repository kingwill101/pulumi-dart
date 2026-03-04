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
      cidr: (() {
        final guardedValue = map['cidr'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dhcpEnabled: (() {
        final guardedValue = map['dhcpEnabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      dnsPublishFixedIp: (() {
        final guardedValue = map['dnsPublishFixedIp'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      gatewayIp: (() {
        final guardedValue = map['gatewayIp'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      ipv6AddressMode: (() {
        final guardedValue = map['ipv6AddressMode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ipv6RaMode: map['ipv6RaMode'] as String,
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      networkId: (() {
        final guardedValue = map['networkId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      segmentId: (() {
        final guardedValue = map['segmentId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sortDirection: (() {
        final guardedValue = map['sortDirection'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sortKey: (() {
        final guardedValue = map['sortKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      subnetpoolId: (() {
        final guardedValue = map['subnetpoolId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
