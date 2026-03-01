// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_identity.dart';

/// Input properties used for looking up and filtering Assignment resources.
class AssignmentState {
  /// The name of the blueprint assigned
  final pulumi.Input<String>? blueprintName;
  /// The Description on the Blueprint
  final pulumi.Input<String>? description;
  /// The display name of the blueprint
  final pulumi.Input<String>? displayName;
  /// An `identity` block as defined below.
  final pulumi.Input<AssignmentIdentity>? identity;
  /// The Azure location of the Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint.
  final pulumi.Input<List<String>>? lockExcludeActions;
  /// a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint.
  final pulumi.Input<List<String>>? lockExcludePrincipals;
  /// The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`.
  final pulumi.Input<String>? lockMode;
  /// The name of the Blueprint Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// a JSON string to supply Blueprint Assignment parameter values.
  ///
  /// > **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  final pulumi.Input<String>? parameterValues;
  /// a JSON string to supply the Blueprint Resource Group information.
  ///
  /// > **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  final pulumi.Input<String>? resourceGroups;
  /// The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetSubscriptionId;
  final pulumi.Input<String>? type;
  /// The ID of the Published Version of the blueprint to be assigned.
  final pulumi.Input<String>? versionId;

  /// Creates a new [AssignmentState].
  /// [blueprintName] The name of the blueprint assigned
  /// [description] The Description on the Blueprint
  /// [displayName] The display name of the blueprint
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location of the Assignment. Changing this forces a new resource to be created.
  /// [lockExcludeActions] a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint.
  /// [lockExcludePrincipals] a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint.
  /// [lockMode] The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`.
  /// [name] The name of the Blueprint Assignment. Changing this forces a new resource to be created.
  /// [parameterValues] a JSON string to supply Blueprint Assignment parameter values.
  /// [resourceGroups] a JSON string to supply the Blueprint Resource Group information.
  /// [targetSubscriptionId] The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created.
  /// [type] Optional.
  /// [versionId] The ID of the Published Version of the blueprint to be assigned.
  AssignmentState({
    pulumi.Output<String>? blueprintName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<AssignmentIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? lockExcludeActions,
    pulumi.Output<List<String>>? lockExcludePrincipals,
    pulumi.Output<String>? lockMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parameterValues,
    pulumi.Output<String>? resourceGroups,
    pulumi.Output<String>? targetSubscriptionId,
    pulumi.Output<String>? type,
    pulumi.Output<String>? versionId,
  }) :
      blueprintName = pulumi.Input.asOptionalInput<String>(blueprintName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identity = pulumi.Input.asOptionalInput<AssignmentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockExcludeActions = pulumi.Input.asOptionalInput<List<String>>(lockExcludeActions),
      lockExcludePrincipals = pulumi.Input.asOptionalInput<List<String>>(lockExcludePrincipals),
      lockMode = pulumi.Input.asOptionalInput<String>(lockMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameterValues = pulumi.Input.asOptionalInput<String>(parameterValues),
      resourceGroups = pulumi.Input.asOptionalInput<String>(resourceGroups),
      targetSubscriptionId = pulumi.Input.asOptionalInput<String>(targetSubscriptionId),
      type = pulumi.Input.asOptionalInput<String>(type),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': ?blueprintName,
      'description': ?description,
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<AssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'lockExcludeActions': ?lockExcludeActions,
      'lockExcludePrincipals': ?lockExcludePrincipals,
      'lockMode': ?lockMode,
      'name': ?name,
      'parameterValues': ?parameterValues,
      'resourceGroups': ?resourceGroups,
      'targetSubscriptionId': ?targetSubscriptionId,
      'type': ?type,
      'versionId': ?versionId,
    };
  }

  factory AssignmentState.fromMap(Map<String, dynamic> map) {
    return AssignmentState(
      blueprintName: map['blueprintName'] == null ? null : pulumi.Output.create<String>(map['blueprintName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<AssignmentIdentity>(AssignmentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      lockExcludeActions: map['lockExcludeActions'] == null ? null : pulumi.Output.create<List<String>>((map['lockExcludeActions'] as List).cast<String>()),
      lockExcludePrincipals: map['lockExcludePrincipals'] == null ? null : pulumi.Output.create<List<String>>((map['lockExcludePrincipals'] as List).cast<String>()),
      lockMode: map['lockMode'] == null ? null : pulumi.Output.create<String>(map['lockMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameterValues: map['parameterValues'] == null ? null : pulumi.Output.create<String>(map['parameterValues'] as String),
      resourceGroups: map['resourceGroups'] == null ? null : pulumi.Output.create<String>(map['resourceGroups'] as String),
      targetSubscriptionId: map['targetSubscriptionId'] == null ? null : pulumi.Output.create<String>(map['targetSubscriptionId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

