// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SocketIO settings for the resource
class WebPubSubSocketIOSettings {
  /// The service mode of Web PubSub for Socket.IO. Values allowed:
  /// "Default": have your own backend Socket.IO server
  /// "Serverless": your application doesn't have a backend server
  final pulumi.Input<String>? serviceMode;

  /// Creates a new [WebPubSubSocketIOSettings].
  /// [serviceMode] The service mode of Web PubSub for Socket.IO. Values allowed:
  WebPubSubSocketIOSettings({
    this.serviceMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceMode': ?serviceMode,
    };
  }

  factory WebPubSubSocketIOSettings.fromMap(Map<String, dynamic> map) {
    return WebPubSubSocketIOSettings(
      serviceMode: (() { final guardedValue = map['serviceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

