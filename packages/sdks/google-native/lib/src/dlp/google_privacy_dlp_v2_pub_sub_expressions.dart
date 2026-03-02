// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_pub_sub_condition.dart';
import 'google_privacy_dlp_v2_pub_sub_expressions_logical_operator.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2PubSubExpressions {
  /// Conditions to apply to the expression.
  final pulumi.Input<List<GooglePrivacyDlpV2PubSubCondition>>? conditions;
  /// The operator to apply to the collection of conditions.
  final pulumi.Input<GooglePrivacyDlpV2PubSubExpressionsLogicalOperator>? logicalOperator;

  /// Creates a new [GooglePrivacyDlpV2PubSubExpressions].
  /// [conditions] Conditions to apply to the expression.
  /// [logicalOperator] The operator to apply to the collection of conditions.
  GooglePrivacyDlpV2PubSubExpressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2PubSubCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2PubSubCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalOperator': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2PubSubExpressionsLogicalOperator, String>(logicalOperator, (value) => value.value),
    };
  }

  factory GooglePrivacyDlpV2PubSubExpressions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubExpressions(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2PubSubCondition>(map['conditions'], (value) => GooglePrivacyDlpV2PubSubCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logicalOperator: map['logicalOperator'] == null ? null : (GooglePrivacyDlpV2PubSubExpressionsLogicalOperator.fromValue(map['logicalOperator'] as String)).input(),
    );
  }
}

