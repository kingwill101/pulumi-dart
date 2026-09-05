// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_plan.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// The application definition ID to deploy.
  final pulumi.Input<String?>? applicationDefinitionId;
  /// The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? managedResourceGroupName;
  /// Specifies the name of the Managed Application. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name and value pairs that define the managed application outputs.
  final pulumi.Input<Map<String, String>?>? outputs;
  /// The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application.
  final pulumi.Input<String?>? parameterValues;
  /// One `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ApplicationPlan?>? plan;
  /// The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

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
  const ApplicationState({
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
      applicationDefinitionId: (() { final guardedValue = map['applicationDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
