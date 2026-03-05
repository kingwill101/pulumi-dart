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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allTags: (map['allTags'] as List).cast<String>(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsDomain: map['dnsDomain'] as String,
      dnsName: map['dnsName'] as String,
      fixedIp: (() { final guardedValue = map['fixedIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

