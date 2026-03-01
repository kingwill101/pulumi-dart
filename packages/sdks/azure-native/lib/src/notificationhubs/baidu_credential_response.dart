// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub BaiduCredential.
class BaiduCredentialResponse {
  /// Gets or sets baidu Api Key.
  final String baiduApiKey;
  /// Gets or sets baidu Endpoint.
  final String baiduEndPoint;
  /// Gets or sets baidu Secret Key
  final String baiduSecretKey;

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
      baiduApiKey: map['baiduApiKey'] as String,
      baiduEndPoint: map['baiduEndPoint'] as String,
      baiduSecretKey: map['baiduSecretKey'] as String,
    );
  }
}

