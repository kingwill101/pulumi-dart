// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getARecord.
class GetARecordResult {
  /// The FQDN of the DNS A Record.
  final String? fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// List of IPv4 Addresses.
  final List<String>? records;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the DNS A Record.
  final Map<String, String>? tags;
  /// The Azure resource id of the target object from where the dns resource value is taken.
  final String? targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final int? ttl;
  final String? zoneName;

  /// Creates a new [GetARecordResult].
  /// [fqdn] The FQDN of the DNS A Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [records] List of IPv4 Addresses.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the DNS A Record.
  /// [targetResourceId] The Azure resource id of the target object from where the dns resource value is taken.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Optional.
  const GetARecordResult({
    this.fqdn,
    this.id,
    this.name,
    this.records,
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
      'records': ?records,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory GetARecordResult.fromMap(Map<String, dynamic> map) {
    return GetARecordResult(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
