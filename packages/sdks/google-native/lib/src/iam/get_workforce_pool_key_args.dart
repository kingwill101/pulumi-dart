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
    required this.keyId,
    required this.location,
    required this.providerId,
    required this.workforcePoolId,
  });

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
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      providerId: pulumi.Input.fromValue(map['providerId'] as String),
      workforcePoolId: pulumi.Input.fromValue(map['workforcePoolId'] as String),
    );
  }
}

