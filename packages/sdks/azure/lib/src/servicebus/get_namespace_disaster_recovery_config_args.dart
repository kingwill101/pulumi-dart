// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_namespace_disaster_recovery_config_get_namespace_disaster_recovery_config_args_doc}
/// Arguments for getNamespaceDisasterRecoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_namespace_disaster_recovery_config_get_namespace_disaster_recovery_config_args_doc}
class GetNamespaceDisasterRecoveryConfigArgs {
  /// The Shared access policies used to access the connection string for the alias.
  final pulumi.Input<String>? aliasAuthorizationRuleId;
  /// The name of this Service Bus Disaster Recovery Config.
  final pulumi.Input<String> name;
  /// The ID of the Service Bus Namespace.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetNamespaceDisasterRecoveryConfigArgs].
  /// [aliasAuthorizationRuleId] The Shared access policies used to access the connection string for the alias.
  /// [name] The name of this Service Bus Disaster Recovery Config.
  /// [namespaceId] The ID of the Service Bus Namespace.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  GetNamespaceDisasterRecoveryConfigArgs({
    this.aliasAuthorizationRuleId,
    required this.name,
    this.namespaceId,
    this.namespaceName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasAuthorizationRuleId': ?aliasAuthorizationRuleId,
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetNamespaceDisasterRecoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDisasterRecoveryConfigArgs(
      aliasAuthorizationRuleId: map['aliasAuthorizationRuleId'] == null ? null : (map['aliasAuthorizationRuleId']! as String).input(),
      name: (map['name'] as String).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

