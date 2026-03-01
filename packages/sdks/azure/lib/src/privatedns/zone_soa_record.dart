// ignore_for_file: unused_element, unnecessary_cast


class ZoneSoaRecord {
  /// The email contact for the SOA record.
  final String email;
  /// The expire time for the SOA record. Defaults to `2419200`.
  final int? expireTime;
  /// The fully qualified domain name of the Record Set.
  final String? fqdn;
  /// The domain name of the authoritative name server for the SOA record.
  final String? hostName;
  /// The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to `10`.
  final int? minimumTtl;
  /// The refresh time for the SOA record. Defaults to `3600`.
  final int? refreshTime;
  /// The retry time for the SOA record. Defaults to `300`.
  final int? retryTime;
  /// The serial number for the SOA record.
  final int? serialNumber;
  /// A mapping of tags to assign to the Record Set.
  final Map<String, String>? tags;
  /// The Time To Live of the SOA Record in seconds. Defaults to `3600`.
  final int? ttl;

  /// Creates a new [ZoneSoaRecord].
  /// [email] The email contact for the SOA record.
  /// [expireTime] The expire time for the SOA record. Defaults to `2419200`.
  /// [fqdn] The fully qualified domain name of the Record Set.
  /// [hostName] The domain name of the authoritative name server for the SOA record.
  /// [minimumTtl] The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to `10`.
  /// [refreshTime] The refresh time for the SOA record. Defaults to `3600`.
  /// [retryTime] The retry time for the SOA record. Defaults to `300`.
  /// [serialNumber] The serial number for the SOA record.
  /// [tags] A mapping of tags to assign to the Record Set.
  /// [ttl] The Time To Live of the SOA Record in seconds. Defaults to `3600`.
  ZoneSoaRecord({
    required this.email,
    this.expireTime,
    this.fqdn,
    this.hostName,
    this.minimumTtl,
    this.refreshTime,
    this.retryTime,
    this.serialNumber,
    this.tags,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'expireTime': ?expireTime,
      'fqdn': ?fqdn,
      'hostName': ?hostName,
      'minimumTtl': ?minimumTtl,
      'refreshTime': ?refreshTime,
      'retryTime': ?retryTime,
      'serialNumber': ?serialNumber,
      'tags': ?tags,
      'ttl': ?ttl,
    };
  }

  factory ZoneSoaRecord.fromMap(Map<String, dynamic> map) {
    return ZoneSoaRecord(
      email: map['email'] as String,
      expireTime: map['expireTime'] == null ? null : map['expireTime'] as int,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      minimumTtl: map['minimumTtl'] == null ? null : map['minimumTtl'] as int,
      refreshTime: map['refreshTime'] == null ? null : map['refreshTime'] as int,
      retryTime: map['retryTime'] == null ? null : map['retryTime'] as int,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}

