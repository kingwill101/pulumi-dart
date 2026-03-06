// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_evaluation_mode.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorization {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final pulumi.Input<bool>? enabled;
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final pulumi.Input<BinaryAuthorizationEvaluationMode>? evaluationMode;

  /// Creates a new [BinaryAuthorization].
  /// [enabled] This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  const BinaryAuthorization({
    this.enabled,
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'evaluationMode': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationEvaluationMode, String>(evaluationMode, (value) => value.wireValue),
    };
  }

  factory BinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorization(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evaluationMode: (() { final guardedValue = map['evaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BinaryAuthorizationEvaluationMode.fromValue(guardedValue as String)); })(),
    );
  }
}

