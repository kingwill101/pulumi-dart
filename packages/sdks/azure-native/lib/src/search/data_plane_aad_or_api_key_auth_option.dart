// ignore_for_file: unused_element, unnecessary_cast

import 'aad_auth_failure_mode.dart';

/// Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
class DataPlaneAadOrApiKeyAuthOption {
  /// Describes what response the data plane API of a search service would send for requests that failed authentication.
  final AadAuthFailureMode? aadAuthFailureMode;

  /// Creates a new [DataPlaneAadOrApiKeyAuthOption].
  /// [aadAuthFailureMode] Describes what response the data plane API of a search service would send for requests that failed authentication.
  DataPlaneAadOrApiKeyAuthOption({
    this.aadAuthFailureMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthFailureMode': ?aadAuthFailureMode == null ? null : aadAuthFailureMode!.value,
    };
  }

  factory DataPlaneAadOrApiKeyAuthOption.fromMap(Map<String, dynamic> map) {
    return DataPlaneAadOrApiKeyAuthOption(
      aadAuthFailureMode: map['aadAuthFailureMode'] == null ? null : AadAuthFailureMode.fromValue(map['aadAuthFailureMode'] as String),
    );
  }
}

