// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data.dart';
import 'workload_identity_pool_key_use.dart';

/// {@template pulumi_iam_v1_workload_identity_pool_key_args_doc}
/// The set of arguments for WorkloadIdentityPoolKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_workload_identity_pool_key_args_doc}
class WorkloadIdentityPoolKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  final pulumi.Input<KeyData>? keyData;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> providerId;
  /// The purpose of the key.
  final pulumi.Input<WorkloadIdentityPoolKeyUse> use;
  final pulumi.Input<String> workloadIdentityPoolId;
  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> workloadIdentityPoolProviderKeyId;

  /// Creates a new [WorkloadIdentityPoolKeyArgs].
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [location] Optional.
  /// [project] Optional.
  /// [providerId] Required.
  /// [use] The purpose of the key.
  /// [workloadIdentityPoolId] Required.
  /// [workloadIdentityPoolProviderKeyId] Required. The ID to use for the key, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-].
  const WorkloadIdentityPoolKeyArgs({
    this.keyData,
    this.location,
    this.project,
    required this.providerId,
    required this.use,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?pulumi.Input.mapOptionalInputValue<KeyData, Map<String, dynamic>>(keyData, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'providerId': providerId,
      'use': pulumi.Input.mapInputValue<WorkloadIdentityPoolKeyUse, String>(use, (value) => value.wireValue),
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolProviderKeyId': workloadIdentityPoolProviderKeyId,
    };
  }

  factory WorkloadIdentityPoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolKeyArgs(
      keyData: (() { final guardedValue = map['keyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerId: pulumi.Input.fromValue(map['providerId'] as String),
      use: pulumi.Input.fromValue(WorkloadIdentityPoolKeyUse.fromValue(map['use']! as String)),
      workloadIdentityPoolId: pulumi.Input.fromValue(map['workloadIdentityPoolId'] as String),
      workloadIdentityPoolProviderKeyId: pulumi.Input.fromValue(map['workloadIdentityPoolProviderKeyId'] as String),
    );
  }
}
