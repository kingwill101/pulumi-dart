// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetPacketCaptureFilter {
  /// The local IP Address to be filtered on. Specify `127.0.0.1` for a single address entry, `127.0.0.1-127.0.0.255` for a range and `127.0.0.1;127.0.0.5` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  final pulumi.Input<String>? localIpAddress;
  /// The local port to be filtered on. Specify `80` for single port entry, `80-85` for a range and `80;443;` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  final pulumi.Input<String>? localPort;
  /// The Protocol to be filtered on. Possible values include `Any`, `TCP` and `UDP`. Changing this forces a new resource to be created.
  final pulumi.Input<String> protocol;
  /// The remote IP Address to be filtered on. Specify `127.0.0.1` for a single address entry, `127.0.0.1-127.0.0.255` for a range and `127.0.0.1;127.0.0.5` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  final pulumi.Input<String>? remoteIpAddress;
  /// The remote port to be filtered on. Specify `80` for single port entry, `80-85` for a range and `80;443;` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  final pulumi.Input<String>? remotePort;

  /// Creates a new [ScaleSetPacketCaptureFilter].
  /// [localIpAddress] The local IP Address to be filtered on. Specify `127.0.0.1` for a single address entry, `127.0.0.1-127.0.0.255` for a range and `127.0.0.1;127.0.0.5` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  /// [localPort] The local port to be filtered on. Specify `80` for single port entry, `80-85` for a range and `80;443;` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  /// [protocol] The Protocol to be filtered on. Possible values include `Any`, `TCP` and `UDP`. Changing this forces a new resource to be created.
  /// [remoteIpAddress] The remote IP Address to be filtered on. Specify `127.0.0.1` for a single address entry, `127.0.0.1-127.0.0.255` for a range and `127.0.0.1;127.0.0.5` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  /// [remotePort] The remote port to be filtered on. Specify `80` for single port entry, `80-85` for a range and `80;443;` for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
  const ScaleSetPacketCaptureFilter({
    this.localIpAddress,
    this.localPort,
    required this.protocol,
    this.remoteIpAddress,
    this.remotePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localIpAddress': ?localIpAddress,
      'localPort': ?localPort,
      'protocol': protocol,
      'remoteIpAddress': ?remoteIpAddress,
      'remotePort': ?remotePort,
    };
  }

  factory ScaleSetPacketCaptureFilter.fromMap(Map<String, dynamic> map) {
    return ScaleSetPacketCaptureFilter(
      localIpAddress: (() { final guardedValue = map['localIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localPort: (() { final guardedValue = map['localPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      remoteIpAddress: (() { final guardedValue = map['remoteIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remotePort: (() { final guardedValue = map['remotePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
