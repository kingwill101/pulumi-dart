// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayOtel {
  final pulumi.Input<String?>? authorization;
  /// Available values: "json", "protobuf".
  final pulumi.Input<String?>? contentType;
  final pulumi.Input<Map<String, String>> headers;
  final pulumi.Input<String> url;

  /// Creates a new [AiGatewayOtel].
  /// [authorization] Optional.
  /// [contentType] Available values: "json", "protobuf".
  /// [headers] Required.
  /// [url] Required.
  const AiGatewayOtel({
    this.authorization,
    this.contentType,
    required this.headers,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?authorization,
      'contentType': ?contentType,
      'headers': headers,
      'url': url,
    };
  }

  factory AiGatewayOtel.fromMap(Map<String, dynamic> map) {
    return AiGatewayOtel(
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: pulumi.Input.fromValue((map['headers'] as Map).cast<String, String>()),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
