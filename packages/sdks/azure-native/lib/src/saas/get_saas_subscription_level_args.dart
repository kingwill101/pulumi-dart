// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_saas_get_saas_subscription_level_args_doc}
/// Arguments for getSaasSubscriptionLevel.
/// {@endtemplate}
/// {@macro pulumi_saas_get_saas_subscription_level_args_doc}
class GetSaasSubscriptionLevelArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetSaasSubscriptionLevelArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The name of the resource.
  const GetSaasSubscriptionLevelArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetSaasSubscriptionLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetSaasSubscriptionLevelArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
