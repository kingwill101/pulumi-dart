// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_saas_list_saas_subscription_level_access_token_args_doc}
/// Arguments for listSaasSubscriptionLevelAccessToken.
/// {@endtemplate}
/// {@macro pulumi_saas_list_saas_subscription_level_access_token_args_doc}
class ListSaasSubscriptionLevelAccessTokenArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListSaasSubscriptionLevelAccessTokenArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The name of the resource.
  ListSaasSubscriptionLevelAccessTokenArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListSaasSubscriptionLevelAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return ListSaasSubscriptionLevelAccessTokenArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

