// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCnameRecord.
class GetCnameRecordResult {
  /// The FQDN of the Private DNS CName Record.
  final String fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The target of the CNAME.
  final String record;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  final String targetResourceId;
  /// The Time To Live (TTL) of the Private DNS record in seconds.
  final int ttl;
  final String zoneName;

  /// Creates a new [GetCnameRecordResult].
  /// [fqdn] The FQDN of the Private DNS CName Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [record] The target of the CNAME.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [targetResourceId] Required.
  /// [ttl] The Time To Live (TTL) of the Private DNS record in seconds.
  /// [zoneName] Required.
  const GetCnameRecordResult({
    required this.fqdn,
    required this.id,
    required this.name,
    required this.record,
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
      'record': record,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'targetResourceId': targetResourceId,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory GetCnameRecordResult.fromMap(Map<String, dynamic> map) {
    return GetCnameRecordResult(
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      record: map['record'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] as String,
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}

