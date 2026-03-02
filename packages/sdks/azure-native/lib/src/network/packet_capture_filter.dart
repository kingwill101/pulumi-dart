// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter that is applied to packet capture request. Multiple filters can be applied.
class PacketCaptureFilter {
  /// Local IP Address to be filtered on. Notation: "127.0.0.1" for single address entry. "127.0.0.1-127.0.0.255" for range. "127.0.0.1;127.0.0.5"? for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  final pulumi.Input<String>? localIPAddress;
  /// Local port to be filtered on. Notation: "80" for single port entry."80-85" for range. "80;443;" for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  final pulumi.Input<String>? localPort;
  /// Protocol to be filtered on.
  final pulumi.Input<String>? protocol;
  /// Local IP Address to be filtered on. Notation: "127.0.0.1" for single address entry. "127.0.0.1-127.0.0.255" for range. "127.0.0.1;127.0.0.5;" for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  final pulumi.Input<String>? remoteIPAddress;
  /// Remote port to be filtered on. Notation: "80" for single port entry."80-85" for range. "80;443;" for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  final pulumi.Input<String>? remotePort;

  /// Creates a new [PacketCaptureFilter].
  /// [localIPAddress] Local IP Address to be filtered on. Notation: "127.0.0.1" for single address entry. "127.0.0.1-127.0.0.255" for range. "127.0.0.1;127.0.0.5"? for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  /// [localPort] Local port to be filtered on. Notation: "80" for single port entry."80-85" for range. "80;443;" for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  /// [protocol] Protocol to be filtered on.
  /// [remoteIPAddress] Local IP Address to be filtered on. Notation: "127.0.0.1" for single address entry. "127.0.0.1-127.0.0.255" for range. "127.0.0.1;127.0.0.5;" for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  /// [remotePort] Remote port to be filtered on. Notation: "80" for single port entry."80-85" for range. "80;443;" for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Default = null.
  PacketCaptureFilter({
    this.localIPAddress,
    this.localPort,
    this.protocol,
    this.remoteIPAddress,
    this.remotePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localIPAddress': ?localIPAddress,
      'localPort': ?localPort,
      'protocol': ?protocol,
      'remoteIPAddress': ?remoteIPAddress,
      'remotePort': ?remotePort,
    };
  }

  factory PacketCaptureFilter.fromMap(Map<String, dynamic> map) {
    return PacketCaptureFilter(
      localIPAddress: map['localIPAddress'] == null ? null : (map['localIPAddress'] as String).input(),
      localPort: map['localPort'] == null ? null : (map['localPort'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      remoteIPAddress: map['remoteIPAddress'] == null ? null : (map['remoteIPAddress'] as String).input(),
      remotePort: map['remotePort'] == null ? null : (map['remotePort'] as String).input(),
    );
  }
}

