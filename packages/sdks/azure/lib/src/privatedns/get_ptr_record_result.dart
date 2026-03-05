// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPtrRecord.
class GetPtrRecordResult {
  /// The FQDN of the Private DNS PTR Record.
  final String fqdn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// List of Fully Qualified Domain Names.
  final List<String> records;
  final String resourceGroupName;

  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// The Time To Live (TTL) of the Private DNS record in seconds.
  final int ttl;
  final String zoneName;

  /// Creates a new [GetPtrRecordResult].
  /// [fqdn] The FQDN of the Private DNS PTR Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [records] List of Fully Qualified Domain Names.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [ttl] The Time To Live (TTL) of the Private DNS record in seconds.
  /// [zoneName] Required.
  GetPtrRecordResult({
    required this.fqdn,
    required this.id,
    required this.name,
    required this.records,
    required this.resourceGroupName,
    required this.tags,
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
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory GetPtrRecordResult.fromMap(Map<String, dynamic> map) {
    return GetPtrRecordResult(
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      records: (map['records'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}
