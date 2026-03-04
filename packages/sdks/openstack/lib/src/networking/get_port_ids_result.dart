// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPortIds.
class GetPortIdsResult {
  final bool? adminStateUp;
  final String? description;
  final String? deviceId;
  final String? deviceOwner;
  final String? dnsName;
  final String? fixedIp;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? macAddress;
  final String? name;
  final String? networkId;
  final String? projectId;
  final String? region;
  final List<String>? securityGroupIds;
  final String? sortDirection;
  final String? sortKey;
  final String? status;
  final List<String>? tags;
  final String? tenantId;

  /// Creates a new [GetPortIdsResult].
  /// [adminStateUp] Optional.
  /// [description] Optional.
  /// [deviceId] Optional.
  /// [deviceOwner] Optional.
  /// [dnsName] Optional.
  /// [fixedIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [macAddress] Optional.
  /// [name] Optional.
  /// [networkId] Optional.
  /// [projectId] Optional.
  /// [region] Optional.
  /// [securityGroupIds] Optional.
  /// [sortDirection] Optional.
  /// [sortKey] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [tenantId] Optional.
  GetPortIdsResult({
    this.adminStateUp,
    this.description,
    this.deviceId,
    this.deviceOwner,
    this.dnsName,
    this.fixedIp,
    required this.id,
    required this.ids,
    this.macAddress,
    this.name,
    this.networkId,
    this.projectId,
    this.region,
    this.securityGroupIds,
    this.sortDirection,
    this.sortKey,
    this.status,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'deviceId': ?deviceId,
      'deviceOwner': ?deviceOwner,
      'dnsName': ?dnsName,
      'fixedIp': ?fixedIp,
      'id': id,
      'ids': ids,
      'macAddress': ?macAddress,
      'name': ?name,
      'networkId': ?networkId,
      'projectId': ?projectId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'sortDirection': ?sortDirection,
      'sortKey': ?sortKey,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetPortIdsResult.fromMap(Map<String, dynamic> map) {
    return GetPortIdsResult(
      adminStateUp: (() {
        final guardedValue = map['adminStateUp'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      deviceId: (() {
        final guardedValue = map['deviceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      deviceOwner: (() {
        final guardedValue = map['deviceOwner'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dnsName: (() {
        final guardedValue = map['dnsName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      fixedIp: (() {
        final guardedValue = map['fixedIp'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      macAddress: (() {
        final guardedValue = map['macAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      networkId: (() {
        final guardedValue = map['networkId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      securityGroupIds: (() {
        final guardedValue = map['securityGroupIds'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
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
      status: (() {
        final guardedValue = map['status'];
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
