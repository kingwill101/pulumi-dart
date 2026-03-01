// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_workforce_pool_key_args_doc}
/// Arguments for getWorkforcePoolKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_workforce_pool_key_args_doc}
class GetWorkforcePoolKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [GetWorkforcePoolKeyArgs].
  /// [keyId] Required.
  /// [location] Required.
  /// [providerId] Required.
  /// [workforcePoolId] Required.
  GetWorkforcePoolKeyArgs({
    required pulumi.Output<String> keyId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> providerId,
    required pulumi.Output<String> workforcePoolId,
  }) :
      keyId = pulumi.Input.asInput<String>(keyId),
      location = pulumi.Input.asInput<String>(location),
      providerId = pulumi.Input.asInput<String>(providerId),
      workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'location': location,
      'providerId': providerId,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory GetWorkforcePoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolKeyArgs(
      keyId: pulumi.Output.create<String>(map['keyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      providerId: pulumi.Output.create<String>(map['providerId'] as String),
      workforcePoolId: pulumi.Output.create<String>(map['workforcePoolId'] as String),
    );
  }
}

