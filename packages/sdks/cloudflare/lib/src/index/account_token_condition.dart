// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_token_condition_request_ip.dart';

class AccountTokenCondition {
  /// Client IP restrictions.
  final pulumi.Input<AccountTokenConditionRequestIp?>? requestIp;

  /// Creates a new [AccountTokenCondition].
  /// [requestIp] Client IP restrictions.
  const AccountTokenCondition({
    this.requestIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestIp': ?pulumi.Input.mapOptionalInputValue<AccountTokenConditionRequestIp, Map<String, dynamic>>(requestIp, (value) => value.toMap()),
    };
  }

  factory AccountTokenCondition.fromMap(Map<String, dynamic> map) {
    return AccountTokenCondition(
      requestIp: (() { final guardedValue = map['requestIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountTokenConditionRequestIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
