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
  const GetRatePlanArgs({
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
      apiproductId: pulumi.Input.fromValue(map['apiproductId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      rateplanId: pulumi.Input.fromValue(map['rateplanId'] as String),
    );
  }
}
