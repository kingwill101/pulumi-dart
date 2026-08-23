// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string_response.dart';

/// The key authorization type integration runtime.
class LinkedIntegrationRuntimeKeyAuthorizationResponse {
  /// The authorization type for integration runtime sharing.
  /// Expected value is 'Key'.
  final pulumi.Input<String> authorizationType;
  /// The key used for authorization.
  final pulumi.Input<SecureStringResponse> key;

  /// Creates a new [LinkedIntegrationRuntimeKeyAuthorizationResponse].
  /// [authorizationType] The authorization type for integration runtime sharing.
  /// [key] The key used for authorization.
  const LinkedIntegrationRuntimeKeyAuthorizationResponse({
    required this.authorizationType,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'key': pulumi.Input.mapInputValue<SecureStringResponse, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory LinkedIntegrationRuntimeKeyAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return LinkedIntegrationRuntimeKeyAuthorizationResponse(
      authorizationType: pulumi.Input.fromValue(map['authorizationType'] as String),
      key: pulumi.Input.fromValue(SecureStringResponse.fromMap((map['key']! as Map).cast<String, dynamic>())),
    );
  }
}
