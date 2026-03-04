// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SDK Information.
class SDKInfoResponse {
  /// The SDK Language.
  final pulumi.Input<String> language;

  /// Optional. The SDK version.
  final pulumi.Input<String> version;

  /// Creates a new [SDKInfoResponse].
  /// [language] The SDK Language.
  /// [version] Optional. The SDK version.
  SDKInfoResponse({required this.language, required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'language': language, 'version': version};
  }

  factory SDKInfoResponse.fromMap(Map<String, dynamic> map) {
    return SDKInfoResponse(
      language: pulumi.Input.fromValue(map['language'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
