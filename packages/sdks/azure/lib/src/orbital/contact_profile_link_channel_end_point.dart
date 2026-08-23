// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContactProfileLinkChannelEndPoint {
  /// Name of an end point.
  final pulumi.Input<String> endPointName;
  /// IP address of an end point.
  final pulumi.Input<String>? ipAddress;
  /// TCP port to listen on to receive data.
  final pulumi.Input<String> port;
  /// Protocol of an end point. Possible values are `TCP` and `UDP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [ContactProfileLinkChannelEndPoint].
  /// [endPointName] Name of an end point.
  /// [ipAddress] IP address of an end point.
  /// [port] TCP port to listen on to receive data.
  /// [protocol] Protocol of an end point. Possible values are `TCP` and `UDP`.
  const ContactProfileLinkChannelEndPoint({
    required this.endPointName,
    this.ipAddress,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPointName': endPointName,
      'ipAddress': ?ipAddress,
      'port': port,
      'protocol': protocol,
    };
  }

  factory ContactProfileLinkChannelEndPoint.fromMap(Map<String, dynamic> map) {
    return ContactProfileLinkChannelEndPoint(
      endPointName: pulumi.Input.fromValue(map['endPointName'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
