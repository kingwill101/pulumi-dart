// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCnameRecord.
class GetCnameRecordResult {
  /// The FQDN of the Private DNS CName Record.
  final String? fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The target of the CNAME.
  final String? record;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  final String? targetResourceId;
  /// The Time To Live (TTL) of the Private DNS record in seconds.
  final int? ttl;
  final String? zoneName;

  /// Creates a new [GetCnameRecordResult].
  /// [fqdn] The FQDN of the Private DNS CName Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [record] The target of the CNAME.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  /// [targetResourceId] Optional.
  /// [ttl] The Time To Live (TTL) of the Private DNS record in seconds.
  /// [zoneName] Optional.
  const GetCnameRecordResult({
    this.fqdn,
    this.id,
    this.name,
    this.record,
    this.resourceGroupName,
    this.tags,
    this.targetResourceId,
    this.ttl,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'id': ?id,
      'name': ?name,
      'record': ?record,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory GetCnameRecordResult.fromMap(Map<String, dynamic> map) {
    return GetCnameRecordResult(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      record: (() { final guardedValue = map['record']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
