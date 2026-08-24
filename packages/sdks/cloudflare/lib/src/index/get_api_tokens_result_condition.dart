// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_tokens_result_condition_request_ip.dart';

class GetApiTokensResultCondition {
  /// Client IP restrictions.
  final pulumi.Input<GetApiTokensResultConditionRequestIp> requestIp;

  /// Creates a new [GetApiTokensResultCondition].
  /// [requestIp] Client IP restrictions.
  const GetApiTokensResultCondition({
    required this.requestIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestIp': pulumi.Input.mapInputValue<GetApiTokensResultConditionRequestIp, Map<String, dynamic>>(requestIp, (value) => value.toMap()),
    };
  }

  factory GetApiTokensResultCondition.fromMap(Map<String, dynamic> map) {
    return GetApiTokensResultCondition(
      requestIp: pulumi.Input.fromValue(GetApiTokensResultConditionRequestIp.fromMap((map['requestIp']! as Map).cast<String, dynamic>())),
    );
  }
}
