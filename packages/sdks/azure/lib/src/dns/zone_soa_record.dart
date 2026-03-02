// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneSoaRecord {
  /// The email contact for the SOA record.
  final pulumi.Input<String> email;
  /// The expire time for the SOA record. Defaults to `2419200`.
  final pulumi.Input<int>? expireTime;
  /// The fully qualified domain name.
  final pulumi.Input<String>? fqdn;
  /// The domain name of the authoritative name server for the SOA record.
  final pulumi.Input<String>? hostName;
  /// The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to `300`.
  final pulumi.Input<int>? minimumTtl;
  /// The refresh time for the SOA record. Defaults to `3600`.
  final pulumi.Input<int>? refreshTime;
  /// The retry time for the SOA record. Defaults to `300`.
  final pulumi.Input<int>? retryTime;
  /// The serial number for the SOA record. Defaults to `1`.
  final pulumi.Input<int>? serialNumber;
  /// A mapping of tags to assign to the Record Set.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live of the SOA Record in seconds. Defaults to `3600`.
  final pulumi.Input<int>? ttl;

  /// Creates a new [ZoneSoaRecord].
  /// [email] The email contact for the SOA record.
  /// [expireTime] The expire time for the SOA record. Defaults to `2419200`.
  /// [fqdn] The fully qualified domain name.
  /// [hostName] The domain name of the authoritative name server for the SOA record.
  /// [minimumTtl] The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to `300`.
  /// [refreshTime] The refresh time for the SOA record. Defaults to `3600`.
  /// [retryTime] The retry time for the SOA record. Defaults to `300`.
  /// [serialNumber] The serial number for the SOA record. Defaults to `1`.
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
      email: (map['email'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime']! as int).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      minimumTtl: map['minimumTtl'] == null ? null : (map['minimumTtl']! as int).input(),
      refreshTime: map['refreshTime'] == null ? null : (map['refreshTime']! as int).input(),
      retryTime: map['retryTime'] == null ? null : (map['retryTime']! as int).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
    );
  }
}

