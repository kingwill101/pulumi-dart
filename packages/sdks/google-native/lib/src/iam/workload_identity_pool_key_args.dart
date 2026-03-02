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
  WorkloadIdentityPoolKeyArgs({
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
      'use': pulumi.Input.mapInputValue<WorkloadIdentityPoolKeyUse, String>(use, (value) => value.value),
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolProviderKeyId': workloadIdentityPoolProviderKeyId,
    };
  }

  factory WorkloadIdentityPoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolKeyArgs(
      keyData: map['keyData'] == null ? null : (KeyData.fromMap((map['keyData']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      providerId: (map['providerId'] as String).input(),
      use: (WorkloadIdentityPoolKeyUse.fromValue(map['use'] as String)).input(),
      workloadIdentityPoolId: (map['workloadIdentityPoolId'] as String).input(),
      workloadIdentityPoolProviderKeyId: (map['workloadIdentityPoolProviderKeyId'] as String).input(),
    );
  }
}

