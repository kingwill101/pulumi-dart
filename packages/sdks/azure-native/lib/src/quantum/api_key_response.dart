// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure quantum workspace Api key details.
class ApiKeyResponse {
  /// The creation time of the api key.
  final pulumi.Input<String>? createdAt;
  /// The Api key.
  final pulumi.Input<String> key;

  /// Creates a new [ApiKeyResponse].
  /// [createdAt] The creation time of the api key.
  /// [key] The Api key.
  ApiKeyResponse({
    this.createdAt,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'key': key,
    };
  }

  factory ApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return ApiKeyResponse(
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

