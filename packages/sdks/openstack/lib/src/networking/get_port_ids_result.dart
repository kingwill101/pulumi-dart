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
      adminStateUp: map['adminStateUp'] == null ? null : map['adminStateUp'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      deviceOwner: map['deviceOwner'] == null ? null : map['deviceOwner'] as String,
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      fixedIp: map['fixedIp'] == null ? null : map['fixedIp'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      sortDirection: map['sortDirection'] == null ? null : map['sortDirection'] as String,
      sortKey: map['sortKey'] == null ? null : map['sortKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

