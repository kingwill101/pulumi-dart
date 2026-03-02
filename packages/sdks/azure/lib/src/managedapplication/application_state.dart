// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_plan.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// The application definition ID to deploy.
  final pulumi.Input<String>? applicationDefinitionId;
  /// The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedResourceGroupName;
  /// Specifies the name of the Managed Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name and value pairs that define the managed application outputs.
  final pulumi.Input<Map<String, String>>? outputs;
  /// The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application.
  final pulumi.Input<String>? parameterValues;
  /// One `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ApplicationPlan>? plan;
  /// The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationState].
  /// [applicationDefinitionId] The application definition ID to deploy.
  /// [kind] The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Managed Application. Changing this forces a new resource to be created.
  /// [outputs] The name and value pairs that define the managed application outputs.
  /// [parameterValues] The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application.
  /// [plan] One `plan` block as defined below. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ApplicationState({
    this.applicationDefinitionId,
    this.kind,
    this.location,
    this.managedResourceGroupName,
    this.name,
    this.outputs,
    this.parameterValues,
    this.plan,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionId': ?applicationDefinitionId,
      'kind': ?kind,
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'name': ?name,
      'outputs': ?outputs,
      'parameterValues': ?parameterValues,
      'plan': ?pulumi.Input.mapOptionalInputValue<ApplicationPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationDefinitionId: map['applicationDefinitionId'] == null ? null : (map['applicationDefinitionId'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outputs: map['outputs'] == null ? null : ((map['outputs'] as Map).cast<String, String>()).input(),
      parameterValues: map['parameterValues'] == null ? null : (map['parameterValues'] as String).input(),
      plan: map['plan'] == null ? null : (ApplicationPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

