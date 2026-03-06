// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
class DataPlaneAadOrApiKeyAuthOptionResponse {
  /// Describes what response the data plane API of a search service would send for requests that failed authentication.
  final pulumi.Input<String>? aadAuthFailureMode;

  /// Creates a new [DataPlaneAadOrApiKeyAuthOptionResponse].
  /// [aadAuthFailureMode] Describes what response the data plane API of a search service would send for requests that failed authentication.
  const DataPlaneAadOrApiKeyAuthOptionResponse({
    this.aadAuthFailureMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthFailureMode': ?aadAuthFailureMode,
    };
  }

  factory DataPlaneAadOrApiKeyAuthOptionResponse.fromMap(Map<String, dynamic> map) {
    return DataPlaneAadOrApiKeyAuthOptionResponse(
      aadAuthFailureMode: (() { final guardedValue = map['aadAuthFailureMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

