// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_local_data_local_data.dart';

class ResponsePolicyRuleLocalData {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  /// Structure is documented below.
  final pulumi.Input<List<ResponsePolicyRuleLocalDataLocalData>> localDatas;

  /// Creates a new [ResponsePolicyRuleLocalData].
  /// [localDatas] All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  const ResponsePolicyRuleLocalData({
    required this.localDatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localDatas': pulumi.Input.mapInputValue<List<ResponsePolicyRuleLocalDataLocalData>, List<Map<String, dynamic>>>(localDatas, (value) => pulumi.Input.encodeList<ResponsePolicyRuleLocalDataLocalData, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResponsePolicyRuleLocalData.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalData(
      localDatas: pulumi.Input.fromValue(pulumi.Input.decodeList<ResponsePolicyRuleLocalDataLocalData>(map['localDatas']!, (value) => ResponsePolicyRuleLocalDataLocalData.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
