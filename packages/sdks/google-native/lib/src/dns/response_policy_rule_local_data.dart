// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set.dart';

class ResponsePolicyRuleLocalData {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final pulumi.Input<List<ResourceRecordSet>>? localDatas;

  /// Creates a new [ResponsePolicyRuleLocalData].
  /// [localDatas] All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  ResponsePolicyRuleLocalData({
    this.localDatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localDatas': ?pulumi.Input.mapOptionalInputValue<List<ResourceRecordSet>, List<Map<String, dynamic>>>(localDatas, (value) => pulumi.Input.encodeList<ResourceRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResponsePolicyRuleLocalData.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalData(
      localDatas: map['localDatas'] == null ? null : (pulumi.Input.decodeList<ResourceRecordSet>(map['localDatas'], (value) => ResourceRecordSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

