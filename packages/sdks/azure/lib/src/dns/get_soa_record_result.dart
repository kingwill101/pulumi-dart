// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSoaRecord.
class GetSoaRecordResult {
  /// The email contact for the SOA record.
  final String? email;
  /// The expire time for the SOA record.
  final int? expireTime;
  /// The FQDN of the DNS SOA Record.
  final String? fqdn;
  /// The domain name of the authoritative name server for the SOA record.
  final String? hostName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration.
  final int? minimumTtl;
  /// The name of the DNS SOA Record.
  final String? name;
  /// The refresh time for the SOA record.
  final int? refreshTime;
  final String? resourceGroupName;
  /// The retry time for the SOA record.
  final int? retryTime;
  /// The serial number for the SOA record.
  final int? serialNumber;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final int? ttl;
  final String? zoneName;

  /// Creates a new [GetSoaRecordResult].
  /// [email] The email contact for the SOA record.
  /// [expireTime] The expire time for the SOA record.
  /// [fqdn] The FQDN of the DNS SOA Record.
  /// [hostName] The domain name of the authoritative name server for the SOA record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumTtl] The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration.
  /// [name] The name of the DNS SOA Record.
  /// [refreshTime] The refresh time for the SOA record.
  /// [resourceGroupName] Optional.
  /// [retryTime] The retry time for the SOA record.
  /// [serialNumber] The serial number for the SOA record.
  /// [tags] A mapping of tags assigned to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Optional.
  const GetSoaRecordResult({
    this.email,
    this.expireTime,
    this.fqdn,
    this.hostName,
    this.id,
    this.minimumTtl,
    this.name,
    this.refreshTime,
    this.resourceGroupName,
    this.retryTime,
    this.serialNumber,
    this.tags,
    this.ttl,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'expireTime': ?expireTime,
      'fqdn': ?fqdn,
      'hostName': ?hostName,
      'id': ?id,
      'minimumTtl': ?minimumTtl,
      'name': ?name,
      'refreshTime': ?refreshTime,
      'resourceGroupName': ?resourceGroupName,
      'retryTime': ?retryTime,
      'serialNumber': ?serialNumber,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory GetSoaRecordResult.fromMap(Map<String, dynamic> map) {
    return GetSoaRecordResult(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumTtl: (() { final guardedValue = map['minimumTtl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      refreshTime: (() { final guardedValue = map['refreshTime']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retryTime: (() { final guardedValue = map['retryTime']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
