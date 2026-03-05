// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetDhcpAddressRange {
  /// (Output)
  /// The first IP address of the range.
  final pulumi.Input<String>? firstAddress;
  /// (Output)
  /// The last IP address of the range.
  final pulumi.Input<String>? lastAddress;

  /// Creates a new [SubnetDhcpAddressRange].
  /// [firstAddress] (Output)
  /// [lastAddress] (Output)
  SubnetDhcpAddressRange({
    this.firstAddress,
    this.lastAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstAddress': ?firstAddress,
      'lastAddress': ?lastAddress,
    };
  }

  factory SubnetDhcpAddressRange.fromMap(Map<String, dynamic> map) {
    return SubnetDhcpAddressRange(
      firstAddress: (() { final guardedValue = map['firstAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastAddress: (() { final guardedValue = map['lastAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

