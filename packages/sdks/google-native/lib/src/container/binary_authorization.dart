// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_evaluation_mode.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorization {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final bool? enabled;
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final BinaryAuthorizationEvaluationMode? evaluationMode;

  /// Creates a new [BinaryAuthorization].
  /// [enabled] This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  BinaryAuthorization({
    this.enabled,
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'evaluationMode': ?evaluationMode == null ? null : evaluationMode!.value,
    };
  }

  factory BinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorization(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      evaluationMode: map['evaluationMode'] == null ? null : BinaryAuthorizationEvaluationMode.fromValue(map['evaluationMode'] as String),
    );
  }
}

