// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_workforce_pool_args_doc}
/// Arguments for getWorkforcePool.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_workforce_pool_args_doc}
class GetWorkforcePoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [GetWorkforcePoolArgs].
  /// [location] Required.
  /// [workforcePoolId] Required.
  GetWorkforcePoolArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> workforcePoolId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory GetWorkforcePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      workforcePoolId: pulumi.Output.create<String>(map['workforcePoolId'] as String),
    );
  }
}

