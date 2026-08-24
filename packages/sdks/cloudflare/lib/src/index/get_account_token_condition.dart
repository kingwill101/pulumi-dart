// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_token_condition_request_ip.dart';

class GetAccountTokenCondition {
  /// Client IP restrictions.
  final pulumi.Input<GetAccountTokenConditionRequestIp> requestIp;

  /// Creates a new [GetAccountTokenCondition].
  /// [requestIp] Client IP restrictions.
  const GetAccountTokenCondition({
    required this.requestIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestIp': pulumi.Input.mapInputValue<GetAccountTokenConditionRequestIp, Map<String, dynamic>>(requestIp, (value) => value.toMap()),
    };
  }

  factory GetAccountTokenCondition.fromMap(Map<String, dynamic> map) {
    return GetAccountTokenCondition(
      requestIp: pulumi.Input.fromValue(GetAccountTokenConditionRequestIp.fromMap((map['requestIp']! as Map).cast<String, dynamic>())),
    );
  }
}
