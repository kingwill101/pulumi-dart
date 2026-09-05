// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessCustomPagesResultWarning {
  /// Human-readable description of the finding.
  final pulumi.Input<String> message;
  /// Optional pointer to the part of the template the finding refers to.
  final pulumi.Input<String> ref;
  /// The validation tier that produced the finding (e.g. html, liquid).
  final pulumi.Input<String> tier;

  /// Creates a new [GetZeroTrustAccessCustomPagesResultWarning].
  /// [message] Human-readable description of the finding.
  /// [ref] Optional pointer to the part of the template the finding refers to.
  /// [tier] The validation tier that produced the finding (e.g. html, liquid).
  const GetZeroTrustAccessCustomPagesResultWarning({
    required this.message,
    required this.ref,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'ref': ref,
      'tier': tier,
    };
  }

  factory GetZeroTrustAccessCustomPagesResultWarning.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessCustomPagesResultWarning(
      message: pulumi.Input.fromValue(map['message'] as String),
      ref: pulumi.Input.fromValue(map['ref'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
