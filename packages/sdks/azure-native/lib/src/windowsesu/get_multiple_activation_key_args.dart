// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_windowsesu_get_multiple_activation_key_args_doc}
/// Arguments for getMultipleActivationKey.
/// {@endtemplate}
/// {@macro pulumi_windowsesu_get_multiple_activation_key_args_doc}
class GetMultipleActivationKeyArgs {
  /// The name of the MAK key.
  final pulumi.Input<String> multipleActivationKeyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMultipleActivationKeyArgs].
  /// [multipleActivationKeyName] The name of the MAK key.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMultipleActivationKeyArgs({
    required this.multipleActivationKeyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multipleActivationKeyName': multipleActivationKeyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMultipleActivationKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetMultipleActivationKeyArgs(
      multipleActivationKeyName: pulumi.Input.fromValue(map['multipleActivationKeyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
