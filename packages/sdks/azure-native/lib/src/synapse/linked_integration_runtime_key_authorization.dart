// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string.dart';

/// The key authorization type integration runtime.
class LinkedIntegrationRuntimeKeyAuthorization {
  /// The authorization type for integration runtime sharing.
  /// Expected value is 'Key'.
  final String authorizationType;
  /// The key used for authorization.
  final SecureString key;

  /// Creates a new [LinkedIntegrationRuntimeKeyAuthorization].
  /// [authorizationType] The authorization type for integration runtime sharing.
  /// [key] The key used for authorization.
  LinkedIntegrationRuntimeKeyAuthorization({
    required this.authorizationType,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'key': key.toMap(),
    };
  }

  factory LinkedIntegrationRuntimeKeyAuthorization.fromMap(Map<String, dynamic> map) {
    return LinkedIntegrationRuntimeKeyAuthorization(
      authorizationType: map['authorizationType'] as String,
      key: SecureString.fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}

