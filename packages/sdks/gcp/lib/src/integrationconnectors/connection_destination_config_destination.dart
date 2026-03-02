// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionDestinationConfigDestination {
  /// Host
  final pulumi.Input<String>? host;
  /// port number
  final pulumi.Input<int>? port;
  /// Service Attachment
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [ConnectionDestinationConfigDestination].
  /// [host] Host
  /// [port] port number
  /// [serviceAttachment] Service Attachment
  ConnectionDestinationConfigDestination({
    this.host,
    this.port,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory ConnectionDestinationConfigDestination.fromMap(Map<String, dynamic> map) {
    return ConnectionDestinationConfigDestination(
      host: map['host'] == null ? null : (map['host']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      serviceAttachment: map['serviceAttachment'] == null ? null : (map['serviceAttachment']! as String).input(),
    );
  }
}

