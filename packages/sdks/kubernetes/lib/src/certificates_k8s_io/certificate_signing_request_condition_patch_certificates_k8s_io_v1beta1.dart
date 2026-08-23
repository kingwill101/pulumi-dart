// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1 {
  /// lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  final pulumi.Input<String>? lastTransitionTime;
  /// timestamp for the last update to this condition
  final pulumi.Input<String>? lastUpdateTime;
  /// human readable message with details about the request state
  final pulumi.Input<String>? message;
  /// brief reason for the request state
  final pulumi.Input<String>? reason;
  /// Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
  final pulumi.Input<String>? status;
  /// request approval state, currently Approved or Denied.
  final pulumi.Input<String>? type;

  /// Creates a new [CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1].
  /// [lastTransitionTime] lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  /// [lastUpdateTime] timestamp for the last update to this condition
  /// [message] human readable message with details about the request state
  /// [reason] brief reason for the request state
  /// [status] Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
  /// [type] request approval state, currently Approved or Denied.
  const CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'lastUpdateTime': ?lastUpdateTime,
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1(
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
