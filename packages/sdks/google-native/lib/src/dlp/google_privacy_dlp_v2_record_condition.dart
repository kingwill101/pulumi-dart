// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_expressions.dart';

/// A condition for determining whether a transformation should be applied to a field.
class GooglePrivacyDlpV2RecordCondition {
  /// An expression.
  final pulumi.Input<GooglePrivacyDlpV2Expressions>? expressions;

  /// Creates a new [GooglePrivacyDlpV2RecordCondition].
  /// [expressions] An expression.
  const GooglePrivacyDlpV2RecordCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Expressions, Map<String, dynamic>>(expressions, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RecordCondition.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordCondition(
      expressions: (() { final guardedValue = map['expressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Expressions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

