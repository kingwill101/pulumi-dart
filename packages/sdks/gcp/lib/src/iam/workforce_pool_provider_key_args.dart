// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_key_key_data.dart';

/// {@template pulumi_iam_workforce_pool_provider_key_workforce_pool_provider_key_args_doc}
/// The set of arguments for WorkforcePoolProviderKey.
/// {@endtemplate}
/// {@macro pulumi_iam_workforce_pool_provider_key_workforce_pool_provider_key_args_doc}
class WorkforcePoolProviderKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderKeyKeyData> keyData;
  /// The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> keyId;
  /// The location for the resource.
  final pulumi.Input<String> location;
  /// The ID of the provider.
  final pulumi.Input<String> providerId;
  /// The purpose of the key.
  /// Possible values are: `ENCRYPTION`.
  final pulumi.Input<String> use;
  /// The ID of the workforce pool.
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [WorkforcePoolProviderKeyArgs].
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [keyId] The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// [location] The location for the resource.
  /// [providerId] The ID of the provider.
  /// [use] The purpose of the key.
  /// [workforcePoolId] The ID of the workforce pool.
  const WorkforcePoolProviderKeyArgs({
    required this.keyData,
    required this.keyId,
    required this.location,
    required this.providerId,
    required this.use,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': pulumi.Input.mapInputValue<WorkforcePoolProviderKeyKeyData, Map<String, dynamic>>(keyData, (value) => value.toMap()),
      'keyId': keyId,
      'location': location,
      'providerId': providerId,
      'use': use,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory WorkforcePoolProviderKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderKeyArgs(
      keyData: pulumi.Input.fromValue(WorkforcePoolProviderKeyKeyData.fromMap((map['keyData']! as Map).cast<String, dynamic>())),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      providerId: pulumi.Input.fromValue(map['providerId'] as String),
      use: pulumi.Input.fromValue(map['use'] as String),
      workforcePoolId: pulumi.Input.fromValue(map['workforcePoolId'] as String),
    );
  }
}

