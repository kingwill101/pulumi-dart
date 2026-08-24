// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_token_condition_request_ip.dart';

class GetApiTokenCondition {
  /// Client IP restrictions.
  final pulumi.Input<GetApiTokenConditionRequestIp> requestIp;

  /// Creates a new [GetApiTokenCondition].
  /// [requestIp] Client IP restrictions.
  const GetApiTokenCondition({
    required this.requestIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestIp': pulumi.Input.mapInputValue<GetApiTokenConditionRequestIp, Map<String, dynamic>>(requestIp, (value) => value.toMap()),
    };
  }

  factory GetApiTokenCondition.fromMap(Map<String, dynamic> map) {
    return GetApiTokenCondition(
      requestIp: pulumi.Input.fromValue(GetApiTokenConditionRequestIp.fromMap((map['requestIp']! as Map).cast<String, dynamic>())),
    );
  }
}
