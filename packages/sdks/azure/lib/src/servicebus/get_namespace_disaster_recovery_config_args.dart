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
    pulumi.Output<String>? aliasAuthorizationRuleId,
    required pulumi.Output<String> name,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      aliasAuthorizationRuleId = pulumi.Input.asOptionalInput<String>(aliasAuthorizationRuleId),
      name = pulumi.Input.asInput<String>(name),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      aliasAuthorizationRuleId: map['aliasAuthorizationRuleId'] == null ? null : pulumi.Output.create<String>(map['aliasAuthorizationRuleId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

