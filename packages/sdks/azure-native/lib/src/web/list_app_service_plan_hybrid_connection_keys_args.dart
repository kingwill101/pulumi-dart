// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_app_service_plan_hybrid_connection_keys_args_doc}
/// Arguments for listAppServicePlanHybridConnectionKeys.
/// {@endtemplate}
/// {@macro pulumi_web_list_app_service_plan_hybrid_connection_keys_args_doc}
class ListAppServicePlanHybridConnectionKeysArgs {
  /// Name of the App Service plan.
  final pulumi.Input<String> name;
  /// The name of the Service Bus namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the Service Bus relay.
  final pulumi.Input<String> relayName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAppServicePlanHybridConnectionKeysArgs].
  /// [name] Name of the App Service plan.
  /// [namespaceName] The name of the Service Bus namespace.
  /// [relayName] The name of the Service Bus relay.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  const ListAppServicePlanHybridConnectionKeysArgs({
    required this.name,
    required this.namespaceName,
    required this.relayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAppServicePlanHybridConnectionKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListAppServicePlanHybridConnectionKeysArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      relayName: pulumi.Input.fromValue(map['relayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

