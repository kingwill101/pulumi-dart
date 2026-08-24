// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_tokens_result_condition_request_ip.dart';

class GetAccountTokensResultCondition {
  /// Client IP restrictions.
  final pulumi.Input<GetAccountTokensResultConditionRequestIp> requestIp;

  /// Creates a new [GetAccountTokensResultCondition].
  /// [requestIp] Client IP restrictions.
  const GetAccountTokensResultCondition({
    required this.requestIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestIp': pulumi.Input.mapInputValue<GetAccountTokensResultConditionRequestIp, Map<String, dynamic>>(requestIp, (value) => value.toMap()),
    };
  }

  factory GetAccountTokensResultCondition.fromMap(Map<String, dynamic> map) {
    return GetAccountTokensResultCondition(
      requestIp: pulumi.Input.fromValue(GetAccountTokensResultConditionRequestIp.fromMap((map['requestIp']! as Map).cast<String, dynamic>())),
    );
  }
}
