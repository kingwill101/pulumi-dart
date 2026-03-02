// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Binary Authorization.
class BinaryAuthorizationResponse {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final pulumi.Input<bool> enabled;
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final pulumi.Input<String> evaluationMode;

  /// Creates a new [BinaryAuthorizationResponse].
  /// [enabled] This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  BinaryAuthorizationResponse({
    required this.enabled,
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'evaluationMode': evaluationMode,
    };
  }

  factory BinaryAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationResponse(
      enabled: (map['enabled'] as bool).input(),
      evaluationMode: (map['evaluationMode'] as String).input(),
    );
  }
}

