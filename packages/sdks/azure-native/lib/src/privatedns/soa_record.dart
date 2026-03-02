// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An SOA record.
class SoaRecord {
  /// The email contact for this SOA record.
  final pulumi.Input<String>? email;
  /// The expire time for this SOA record.
  final pulumi.Input<double>? expireTime;
  /// The domain name of the authoritative name server for this SOA record.
  final pulumi.Input<String>? host;
  /// The minimum value for this SOA record. By convention this is used to determine the negative caching duration.
  final pulumi.Input<double>? minimumTtl;
  /// The refresh value for this SOA record.
  final pulumi.Input<double>? refreshTime;
  /// The retry time for this SOA record.
  final pulumi.Input<double>? retryTime;
  /// The serial number for this SOA record.
  final pulumi.Input<double>? serialNumber;

  /// Creates a new [SoaRecord].
  /// [email] The email contact for this SOA record.
  /// [expireTime] The expire time for this SOA record.
  /// [host] The domain name of the authoritative name server for this SOA record.
  /// [minimumTtl] The minimum value for this SOA record. By convention this is used to determine the negative caching duration.
  /// [refreshTime] The refresh value for this SOA record.
  /// [retryTime] The retry time for this SOA record.
  /// [serialNumber] The serial number for this SOA record.
  SoaRecord({
    this.email,
    this.expireTime,
    this.host,
    this.minimumTtl,
    this.refreshTime,
    this.retryTime,
    this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'expireTime': ?expireTime,
      'host': ?host,
      'minimumTtl': ?minimumTtl,
      'refreshTime': ?refreshTime,
      'retryTime': ?retryTime,
      'serialNumber': ?serialNumber,
    };
  }

  factory SoaRecord.fromMap(Map<String, dynamic> map) {
    return SoaRecord(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as double).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      minimumTtl: map['minimumTtl'] == null ? null : (map['minimumTtl'] as double).input(),
      refreshTime: map['refreshTime'] == null ? null : (map['refreshTime'] as double).input(),
      retryTime: map['retryTime'] == null ? null : (map['retryTime'] as double).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as double).input(),
    );
  }
}

