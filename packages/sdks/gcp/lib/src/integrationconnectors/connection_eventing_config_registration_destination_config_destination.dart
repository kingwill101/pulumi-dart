// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionEventingConfigRegistrationDestinationConfigDestination {
  /// Host
  final pulumi.Input<String>? host;
  /// port number
  final pulumi.Input<int>? port;
  /// Service Attachment
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [ConnectionEventingConfigRegistrationDestinationConfigDestination].
  /// [host] Host
  /// [port] port number
  /// [serviceAttachment] Service Attachment
  const ConnectionEventingConfigRegistrationDestinationConfigDestination({
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

  factory ConnectionEventingConfigRegistrationDestinationConfigDestination.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigRegistrationDestinationConfigDestination(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

