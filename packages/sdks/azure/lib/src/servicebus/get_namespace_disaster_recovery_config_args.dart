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
      aliasAuthorizationRuleId: (() { final guardedValue = map['aliasAuthorizationRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

