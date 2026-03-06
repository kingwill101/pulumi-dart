// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_identity.dart';

/// {@template pulumi_blueprint_assignment_assignment_args_doc}
/// The set of arguments for Assignment.
/// {@endtemplate}
/// {@macro pulumi_blueprint_assignment_assignment_args_doc}
class AssignmentArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<AssignmentIdentity> identity;
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
  /// &gt; **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  final pulumi.Input<String>? parameterValues;
  /// a JSON string to supply the Blueprint Resource Group information.
  ///
  /// &gt; **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  final pulumi.Input<String>? resourceGroups;
  /// The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetSubscriptionId;
  /// The ID of the Published Version of the blueprint to be assigned.
  final pulumi.Input<String> versionId;

  /// Creates a new [AssignmentArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location of the Assignment. Changing this forces a new resource to be created.
  /// [lockExcludeActions] a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint.
  /// [lockExcludePrincipals] a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint.
  /// [lockMode] The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`.
  /// [name] The name of the Blueprint Assignment. Changing this forces a new resource to be created.
  /// [parameterValues] a JSON string to supply Blueprint Assignment parameter values.
  /// [resourceGroups] a JSON string to supply the Blueprint Resource Group information.
  /// [targetSubscriptionId] The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created.
  /// [versionId] The ID of the Published Version of the blueprint to be assigned.
  const AssignmentArgs({
    required this.identity,
    this.location,
    this.lockExcludeActions,
    this.lockExcludePrincipals,
    this.lockMode,
    this.name,
    this.parameterValues,
    this.resourceGroups,
    required this.targetSubscriptionId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'lockExcludeActions': ?lockExcludeActions,
      'lockExcludePrincipals': ?lockExcludePrincipals,
      'lockMode': ?lockMode,
      'name': ?name,
      'parameterValues': ?parameterValues,
      'resourceGroups': ?resourceGroups,
      'targetSubscriptionId': targetSubscriptionId,
      'versionId': versionId,
    };
  }

  factory AssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentArgs(
      identity: pulumi.Input.fromValue(AssignmentIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lockExcludeActions: (() { final guardedValue = map['lockExcludeActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lockExcludePrincipals: (() { final guardedValue = map['lockExcludePrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lockMode: (() { final guardedValue = map['lockMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroups: (() { final guardedValue = map['resourceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSubscriptionId: pulumi.Input.fromValue(map['targetSubscriptionId'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

