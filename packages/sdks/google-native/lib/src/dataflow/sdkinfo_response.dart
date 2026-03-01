// ignore_for_file: unused_element, unnecessary_cast


/// SDK Information.
class SDKInfoResponse {
  /// The SDK Language.
  final String language;
  /// Optional. The SDK version.
  final String version;

  /// Creates a new [SDKInfoResponse].
  /// [language] The SDK Language.
  /// [version] Optional. The SDK version.
  SDKInfoResponse({
    required this.language,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'language': language,
      'version': version,
    };
  }

  factory SDKInfoResponse.fromMap(Map<String, dynamic> map) {
    return SDKInfoResponse(
      language: map['language'] as String,
      version: map['version'] as String,
    );
  }
}

