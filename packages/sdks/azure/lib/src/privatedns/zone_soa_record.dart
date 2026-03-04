// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneSoaRecord {
  /// The email contact for the SOA record.
  final pulumi.Input<String> email;

  /// The expire time for the SOA record. Defaults to `2419200`.
  final pulumi.Input<int>? expireTime;

  /// The fully qualified domain name of the Record Set.
  final pulumi.Input<String>? fqdn;

  /// The domain name of the authoritative name server for the SOA record.
  final pulumi.Input<String>? hostName;

  /// The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to `10`.
  final pulumi.Input<int>? minimumTtl;

  /// The refresh time for the SOA record. Defaults to `3600`.
  final pulumi.Input<int>? refreshTime;

  /// The retry time for the SOA record. Defaults to `300`.
  final pulumi.Input<int>? retryTime;

  /// The serial number for the SOA record.
  final pulumi.Input<int>? serialNumber;

  /// A mapping of tags to assign to the Record Set.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Time To Live of the SOA Record in seconds. Defaults to `3600`.
  final pulumi.Input<int>? ttl;

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
      email: pulumi.Input.fromValue(map['email'] as String),
      expireTime: (() {
        final guardedValue = map['expireTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fqdn: (() {
        final guardedValue = map['fqdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minimumTtl: (() {
        final guardedValue = map['minimumTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      refreshTime: (() {
        final guardedValue = map['refreshTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      retryTime: (() {
        final guardedValue = map['retryTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serialNumber: (() {
        final guardedValue = map['serialNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
