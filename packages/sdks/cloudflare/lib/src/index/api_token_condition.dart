// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_token_condition_request_ip.dart';

class ApiTokenCondition {
  /// Client IP restrictions.
  final pulumi.Input<ApiTokenConditionRequestIp?>? requestIp;

  /// Creates a new [ApiTokenCondition].
  /// [requestIp] Client IP restrictions.
  const ApiTokenCondition({
    this.requestIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestIp': ?pulumi.Input.mapOptionalInputValue<ApiTokenConditionRequestIp, Map<String, dynamic>>(requestIp, (value) => value.toMap()),
    };
  }

  factory ApiTokenCondition.fromMap(Map<String, dynamic> map) {
    return ApiTokenCondition(
      requestIp: (() { final guardedValue = map['requestIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiTokenConditionRequestIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
