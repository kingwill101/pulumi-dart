// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_policy_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_get_policy_get_policy_args_doc}
class GetPolicyArgs {
  /// Specifies the id of the storage account to retrieve the management policy for.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [GetPolicyArgs].
  /// [storageAccountId] Specifies the id of the storage account to retrieve the management policy for.
  GetPolicyArgs({
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': storageAccountId,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}

