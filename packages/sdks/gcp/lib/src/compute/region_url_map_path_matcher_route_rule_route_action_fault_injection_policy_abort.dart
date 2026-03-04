// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort {
  /// The HTTP status code used to abort the request.
  /// The value must be between 200 and 599 inclusive.
  final pulumi.Input<int>? httpStatus;

  /// The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final pulumi.Input<double>? percentage;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort].
  /// [httpStatus] The HTTP status code used to abort the request.
  /// [percentage] The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
  RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': ?httpStatus,
      'percentage': ?percentage,
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort(
      httpStatus: (() {
        final guardedValue = map['httpStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      percentage: (() {
        final guardedValue = map['percentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
