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
    required pulumi.Output<String> apiproductId,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> rateplanId,
  }) :
      apiproductId = pulumi.Input.asInput<String>(apiproductId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      rateplanId = pulumi.Input.asInput<String>(rateplanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproductId': apiproductId,
      'organizationId': organizationId,
      'rateplanId': rateplanId,
    };
  }

  factory GetRatePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRatePlanArgs(
      apiproductId: pulumi.Output.create<String>(map['apiproductId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      rateplanId: pulumi.Output.create<String>(map['rateplanId'] as String),
    );
  }
}

