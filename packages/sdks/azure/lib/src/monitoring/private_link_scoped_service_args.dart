// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_private_link_scoped_service_private_link_scoped_service_args_doc}
/// The set of arguments for PrivateLinkScopedService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_private_link_scoped_service_private_link_scoped_service_args_doc}
class PrivateLinkScopedServiceArgs {
  /// The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> linkedResourceId;
  /// The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  final pulumi.Input<String> scopeName;

  /// Creates a new [PrivateLinkScopedServiceArgs].
  /// [linkedResourceId] The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created.
  /// [scopeName] The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  PrivateLinkScopedServiceArgs({
    required this.linkedResourceId,
    this.name,
    required this.resourceGroupName,
    required this.scopeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedResourceId': linkedResourceId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scopeName': scopeName,
    };
  }

  factory PrivateLinkScopedServiceArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopedServiceArgs(
      linkedResourceId: pulumi.Input.fromValue(map['linkedResourceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopeName: pulumi.Input.fromValue(map['scopeName'] as String),
    );
  }
}

