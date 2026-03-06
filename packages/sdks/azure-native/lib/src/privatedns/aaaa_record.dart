// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An AAAA record.
class AaaaRecord {
  /// The IPv6 address of this AAAA record.
  final pulumi.Input<String>? ipv6Address;

  /// Creates a new [AaaaRecord].
  /// [ipv6Address] The IPv6 address of this AAAA record.
  const AaaaRecord({
    this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Address': ?ipv6Address,
    };
  }

  factory AaaaRecord.fromMap(Map<String, dynamic> map) {
    return AaaaRecord(
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

