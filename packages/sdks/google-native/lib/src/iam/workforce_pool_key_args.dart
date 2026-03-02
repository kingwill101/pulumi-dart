// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data.dart';
import 'workforce_pool_key_use.dart';

/// {@template pulumi_iam_v1_workforce_pool_key_args_doc}
/// The set of arguments for WorkforcePoolKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_workforce_pool_key_args_doc}
class WorkforcePoolKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  final pulumi.Input<KeyData>? keyData;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> providerId;
  /// The purpose of the key.
  final pulumi.Input<WorkforcePoolKeyUse> use;
  final pulumi.Input<String> workforcePoolId;
  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> workforcePoolProviderKeyId;

  /// Creates a new [WorkforcePoolKeyArgs].
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [location] Optional.
  /// [providerId] Required.
  /// [use] The purpose of the key.
  /// [workforcePoolId] Required.
  /// [workforcePoolProviderKeyId] Required. The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  WorkforcePoolKeyArgs({
    this.keyData,
    this.location,
    required this.providerId,
    required this.use,
    required this.workforcePoolId,
    required this.workforcePoolProviderKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?pulumi.Input.mapOptionalInputValue<KeyData, Map<String, dynamic>>(keyData, (value) => value.toMap()),
      'location': ?location,
      'providerId': providerId,
      'use': pulumi.Input.mapInputValue<WorkforcePoolKeyUse, String>(use, (value) => value.value),
      'workforcePoolId': workforcePoolId,
      'workforcePoolProviderKeyId': workforcePoolProviderKeyId,
    };
  }

  factory WorkforcePoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolKeyArgs(
      keyData: map['keyData'] == null ? null : (KeyData.fromMap((map['keyData'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      providerId: (map['providerId'] as String).input(),
      use: (WorkforcePoolKeyUse.fromValue(map['use'] as String)).input(),
      workforcePoolId: (map['workforcePoolId'] as String).input(),
      workforcePoolProviderKeyId: (map['workforcePoolProviderKeyId'] as String).input(),
    );
  }
}

