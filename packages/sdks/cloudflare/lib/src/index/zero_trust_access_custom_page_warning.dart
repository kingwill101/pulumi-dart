// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessCustomPageWarning {
  /// Human-readable description of the finding.
  final pulumi.Input<String?>? message;
  /// Optional pointer to the part of the template the finding refers to.
  final pulumi.Input<String?>? ref;
  /// The validation tier that produced the finding (e.g. html, liquid).
  final pulumi.Input<String?>? tier;

  /// Creates a new [ZeroTrustAccessCustomPageWarning].
  /// [message] Human-readable description of the finding.
  /// [ref] Optional pointer to the part of the template the finding refers to.
  /// [tier] The validation tier that produced the finding (e.g. html, liquid).
  const ZeroTrustAccessCustomPageWarning({
    this.message,
    this.ref,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'ref': ?ref,
      'tier': ?tier,
    };
  }

  factory ZeroTrustAccessCustomPageWarning.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessCustomPageWarning(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
