// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAAAARecord.
class GetAAAARecordResult {
  /// The FQDN of the DNS AAAA Record.
  final String fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// List of IPv6 Addresses.
  final List<String> records;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The Azure resource id of the target object from where the dns resource value is taken.
  final String targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final int ttl;
  final String zoneName;

  /// Creates a new [GetAAAARecordResult].
  /// [fqdn] The FQDN of the DNS AAAA Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [records] List of IPv6 Addresses.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [targetResourceId] The Azure resource id of the target object from where the dns resource value is taken.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Required.
  const GetAAAARecordResult({
    required this.fqdn,
    required this.id,
    required this.name,
    required this.records,
    required this.resourceGroupName,
    required this.tags,
    required this.targetResourceId,
    required this.ttl,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'id': id,
      'name': name,
      'records': records,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'targetResourceId': targetResourceId,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory GetAAAARecordResult.fromMap(Map<String, dynamic> map) {
    return GetAAAARecordResult(
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      records: (map['records'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] as String,
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}
