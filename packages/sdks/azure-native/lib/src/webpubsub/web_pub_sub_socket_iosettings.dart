// ignore_for_file: unused_element, unnecessary_cast


/// SocketIO settings for the resource
class WebPubSubSocketIOSettings {
  /// The service mode of Web PubSub for Socket.IO. Values allowed:
  /// "Default": have your own backend Socket.IO server
  /// "Serverless": your application doesn't have a backend server
  final String? serviceMode;

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
      serviceMode: map['serviceMode'] == null ? null : map['serviceMode'] as String,
    );
  }
}

