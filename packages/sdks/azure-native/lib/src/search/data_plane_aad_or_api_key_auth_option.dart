// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_auth_failure_mode.dart';

/// Indicates that either the API key or an access token from a Microsoft Entra ID tenant can be used for authentication.
class DataPlaneAadOrApiKeyAuthOption {
  /// Describes what response the data plane API of a search service would send for requests that failed authentication.
  final pulumi.Input<AadAuthFailureMode>? aadAuthFailureMode;

  /// Creates a new [DataPlaneAadOrApiKeyAuthOption].
  /// [aadAuthFailureMode] Describes what response the data plane API of a search service would send for requests that failed authentication.
  DataPlaneAadOrApiKeyAuthOption({
    this.aadAuthFailureMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthFailureMode': ?pulumi.Input.mapOptionalInputValue<AadAuthFailureMode, String>(aadAuthFailureMode, (value) => value.value),
    };
  }

  factory DataPlaneAadOrApiKeyAuthOption.fromMap(Map<String, dynamic> map) {
    return DataPlaneAadOrApiKeyAuthOption(
      aadAuthFailureMode: map['aadAuthFailureMode'] == null ? null : (AadAuthFailureMode.fromValue(map['aadAuthFailureMode'] as String)).input(),
    );
  }
}

