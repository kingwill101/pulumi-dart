// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFloatingIp.
class GetFloatingIpResult {
  final String? address;
  /// A set of string tags applied on the floating IP.
  final List<String> allTags;
  final String? description;
  /// The floating IP DNS domain. Available, when Neutron DNS
  /// extension is enabled.
  final String dnsDomain;
  /// The floating IP DNS name. Available, when Neutron DNS extension
  /// is enabled.
  final String dnsName;
  final String? fixedIp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? pool;
  final String? portId;
  final String? region;
  final String? status;
  final List<String>? tags;
  final String? tenantId;

  /// Creates a new [GetFloatingIpResult].
  /// [address] Optional.
  /// [allTags] A set of string tags applied on the floating IP.
  /// [description] Optional.
  /// [dnsDomain] The floating IP DNS domain. Available, when Neutron DNS
  /// [dnsName] The floating IP DNS name. Available, when Neutron DNS extension
  /// [fixedIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [pool] Optional.
  /// [portId] Optional.
  /// [region] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [tenantId] Optional.
  GetFloatingIpResult({
    this.address,
    required this.allTags,
    this.description,
    required this.dnsDomain,
    required this.dnsName,
    this.fixedIp,
    required this.id,
    this.pool,
    this.portId,
    this.region,
    this.status,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'allTags': allTags,
      'description': ?description,
      'dnsDomain': dnsDomain,
      'dnsName': dnsName,
      'fixedIp': ?fixedIp,
      'id': id,
      'pool': ?pool,
      'portId': ?portId,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetFloatingIpResult.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpResult(
      address: map['address'] == null ? null : map['address']! as String,
      allTags: (map['allTags'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description']! as String,
      dnsDomain: map['dnsDomain'] as String,
      dnsName: map['dnsName'] as String,
      fixedIp: map['fixedIp'] == null ? null : map['fixedIp']! as String,
      id: map['id'] as String,
      pool: map['pool'] == null ? null : map['pool']! as String,
      portId: map['portId'] == null ? null : map['portId']! as String,
      region: map['region'] == null ? null : map['region']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId']! as String,
    );
  }
}

