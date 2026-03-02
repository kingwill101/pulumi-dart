// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_rate_plan_args_doc}
/// Arguments for getRatePlan.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_rate_plan_args_doc}
class GetRatePlanArgs {
  final pulumi.Input<String> apiproductId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> rateplanId;

  /// Creates a new [GetRatePlanArgs].
  /// [apiproductId] Required.
  /// [organizationId] Required.
  /// [rateplanId] Required.
  GetRatePlanArgs({
    required this.apiproductId,
    required this.organizationId,
    required this.rateplanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproductId': apiproductId,
      'organizationId': organizationId,
      'rateplanId': rateplanId,
    };
  }

  factory GetRatePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRatePlanArgs(
      apiproductId: (map['apiproductId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      rateplanId: (map['rateplanId'] as String).input(),
    );
  }
}

