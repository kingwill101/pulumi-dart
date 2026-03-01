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
    pulumi.Output<String>? applicationDefinitionId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? outputs,
    pulumi.Output<String>? parameterValues,
    pulumi.Output<ApplicationPlan>? plan,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationDefinitionId = pulumi.Input.asOptionalInput<String>(applicationDefinitionId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputs = pulumi.Input.asOptionalInput<Map<String, String>>(outputs),
      parameterValues = pulumi.Input.asOptionalInput<String>(parameterValues),
      plan = pulumi.Input.asOptionalInput<ApplicationPlan>(plan),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      applicationDefinitionId: map['applicationDefinitionId'] == null ? null : pulumi.Output.create<String>(map['applicationDefinitionId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['outputs'] as Map).cast<String, String>()),
      parameterValues: map['parameterValues'] == null ? null : pulumi.Output.create<String>(map['parameterValues'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<ApplicationPlan>(ApplicationPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

