// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionFaultInjectionPolicyAbort {
  /// The HTTP status code used to abort the request.
  final pulumi.Input<int?>? httpStatus;
  /// The percentage of traffic which will be aborted.
  final pulumi.Input<int?>? percentage;

  /// Creates a new [HttpRouteRuleActionFaultInjectionPolicyAbort].
  /// [httpStatus] The HTTP status code used to abort the request.
  /// [percentage] The percentage of traffic which will be aborted.
  const HttpRouteRuleActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': ?httpStatus,
      'percentage': ?percentage,
    };
  }

  factory HttpRouteRuleActionFaultInjectionPolicyAbort.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionFaultInjectionPolicyAbort(
      httpStatus: (() { final guardedValue = map['httpStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
