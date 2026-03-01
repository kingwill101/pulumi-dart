// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateLinkScopedService resources.
class PrivateLinkScopedServiceState {
  /// The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? linkedResourceId;
  /// The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scopeName;

  /// Creates a new [PrivateLinkScopedServiceState].
  /// [linkedResourceId] The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created.
  /// [scopeName] The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  PrivateLinkScopedServiceState({
    pulumi.Output<String>? linkedResourceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? scopeName,
  }) :
      linkedResourceId = pulumi.Input.asOptionalInput<String>(linkedResourceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scopeName = pulumi.Input.asOptionalInput<String>(scopeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedResourceId': ?linkedResourceId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scopeName': ?scopeName,
    };
  }

  factory PrivateLinkScopedServiceState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopedServiceState(
      linkedResourceId: map['linkedResourceId'] == null ? null : pulumi.Output.create<String>(map['linkedResourceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopeName: map['scopeName'] == null ? null : pulumi.Output.create<String>(map['scopeName'] as String),
    );
  }
}

