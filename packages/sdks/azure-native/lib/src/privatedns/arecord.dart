// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An A record.
class ARecord {
  /// The IPv4 address of this A record.
  final pulumi.Input<String>? ipv4Address;

  /// Creates a new [ARecord].
  /// [ipv4Address] The IPv4 address of this A record.
  ARecord({
    this.ipv4Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Address': ?ipv4Address,
    };
  }

  factory ARecord.fromMap(Map<String, dynamic> map) {
    return ARecord(
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

