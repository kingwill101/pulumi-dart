// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of a NotificationHub BaiduCredential.
class BaiduCredentialResponse {
  /// Gets or sets baidu Api Key.
  final pulumi.Input<String> baiduApiKey;
  /// Gets or sets baidu Endpoint.
  final pulumi.Input<String> baiduEndPoint;
  /// Gets or sets baidu Secret Key
  final pulumi.Input<String> baiduSecretKey;

  /// Creates a new [BaiduCredentialResponse].
  /// [baiduApiKey] Gets or sets baidu Api Key.
  /// [baiduEndPoint] Gets or sets baidu Endpoint.
  /// [baiduSecretKey] Gets or sets baidu Secret Key
  BaiduCredentialResponse({
    required this.baiduApiKey,
    required this.baiduEndPoint,
    required this.baiduSecretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baiduApiKey': baiduApiKey,
      'baiduEndPoint': baiduEndPoint,
      'baiduSecretKey': baiduSecretKey,
    };
  }

  factory BaiduCredentialResponse.fromMap(Map<String, dynamic> map) {
    return BaiduCredentialResponse(
      baiduApiKey: (map['baiduApiKey'] as String).input(),
      baiduEndPoint: (map['baiduEndPoint'] as String).input(),
      baiduSecretKey: (map['baiduSecretKey'] as String).input(),
    );
  }
}

