// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayOtel {
  final pulumi.Input<String> authorization;
  /// Available values: "json", "protobuf".
  final pulumi.Input<String> contentType;
  final pulumi.Input<Map<String, String>> headers;
  final pulumi.Input<String> url;

  /// Creates a new [GetAiGatewayOtel].
  /// [authorization] Required.
  /// [contentType] Available values: "json", "protobuf".
  /// [headers] Required.
  /// [url] Required.
  const GetAiGatewayOtel({
    required this.authorization,
    required this.contentType,
    required this.headers,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': authorization,
      'contentType': contentType,
      'headers': headers,
      'url': url,
    };
  }

  factory GetAiGatewayOtel.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayOtel(
      authorization: pulumi.Input.fromValue(map['authorization'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      headers: pulumi.Input.fromValue((map['headers'] as Map).cast<String, String>()),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
