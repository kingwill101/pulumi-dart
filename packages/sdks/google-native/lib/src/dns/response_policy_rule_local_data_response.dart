// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_response.dart';

class ResponsePolicyRuleLocalDataResponse {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final pulumi.Input<List<ResourceRecordSetResponse>> localDatas;

  /// Creates a new [ResponsePolicyRuleLocalDataResponse].
  /// [localDatas] All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  const ResponsePolicyRuleLocalDataResponse({
    required this.localDatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localDatas': pulumi.Input.mapInputValue<List<ResourceRecordSetResponse>, List<Map<String, dynamic>>>(localDatas, (value) => pulumi.Input.encodeList<ResourceRecordSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResponsePolicyRuleLocalDataResponse.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalDataResponse(
      localDatas: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceRecordSetResponse>(map['localDatas']!, (value) => ResourceRecordSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

