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
  GetWorkforcePoolArgs({required this.location, required this.workforcePoolId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory GetWorkforcePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      workforcePoolId: pulumi.Input.fromValue(map['workforcePoolId'] as String),
    );
  }
}
