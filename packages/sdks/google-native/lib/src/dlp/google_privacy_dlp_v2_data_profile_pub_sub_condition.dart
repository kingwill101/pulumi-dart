// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_pub_sub_expressions.dart';

/// A condition for determining whether a Pub/Sub should be triggered.
class GooglePrivacyDlpV2DataProfilePubSubCondition {
  /// An expression.
  final pulumi.Input<GooglePrivacyDlpV2PubSubExpressions>? expressions;

  /// Creates a new [GooglePrivacyDlpV2DataProfilePubSubCondition].
  /// [expressions] An expression.
  const GooglePrivacyDlpV2DataProfilePubSubCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2PubSubExpressions, Map<String, dynamic>>(expressions, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DataProfilePubSubCondition.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfilePubSubCondition(
      expressions: (() { final guardedValue = map['expressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2PubSubExpressions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

