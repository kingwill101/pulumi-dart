// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_authorization.dart';
import 'definition_eligible_authorization.dart';
import 'definition_plan.dart';

/// {@template pulumi_lighthouse_definition_definition_args_doc}
/// The set of arguments for Definition.
/// {@endtemplate}
/// {@macro pulumi_lighthouse_definition_definition_args_doc}
class DefinitionArgs {
  /// An `authorization` block as defined below.
  final pulumi.Input<List<DefinitionAuthorization>> authorizations;
  /// A description of the Lighthouse Definition.
  final pulumi.Input<String>? description;
  /// An `eligible_authorization` block as defined below.
  final pulumi.Input<List<DefinitionEligibleAuthorization>>? eligibleAuthorizations;
  /// A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? lighthouseDefinitionId;
  /// The ID of the managing tenant. Changing this forces a new resource to be created.
  final pulumi.Input<String> managingTenantId;
  /// The name of the Lighthouse Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `plan` block as defined below.
  final pulumi.Input<DefinitionPlan>? plan;
  /// The ID of the managed subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [DefinitionArgs].
  /// [authorizations] An `authorization` block as defined below.
  /// [description] A description of the Lighthouse Definition.
  /// [eligibleAuthorizations] An `eligible_authorization` block as defined below.
  /// [lighthouseDefinitionId] A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [managingTenantId] The ID of the managing tenant. Changing this forces a new resource to be created.
  /// [name] The name of the Lighthouse Definition. Changing this forces a new resource to be created.
  /// [plan] A `plan` block as defined below.
  /// [scope] The ID of the managed subscription. Changing this forces a new resource to be created.
  DefinitionArgs({
    required this.authorizations,
    this.description,
    this.eligibleAuthorizations,
    this.lighthouseDefinitionId,
    required this.managingTenantId,
    this.name,
    this.plan,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': pulumi.Input.mapInputValue<List<DefinitionAuthorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<DefinitionAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'eligibleAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<DefinitionEligibleAuthorization>, List<Map<String, dynamic>>>(eligibleAuthorizations, (value) => pulumi.Input.encodeList<DefinitionEligibleAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lighthouseDefinitionId': ?lighthouseDefinitionId,
      'managingTenantId': managingTenantId,
      'name': ?name,
      'plan': ?pulumi.Input.mapOptionalInputValue<DefinitionPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory DefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DefinitionArgs(
      authorizations: pulumi.Input.fromValue(pulumi.Input.decodeList<DefinitionAuthorization>(map['authorizations']!, (value) => DefinitionAuthorization.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eligibleAuthorizations: (() { final guardedValue = map['eligibleAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DefinitionEligibleAuthorization>(guardedValue, (value) => DefinitionEligibleAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lighthouseDefinitionId: (() { final guardedValue = map['lighthouseDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managingTenantId: pulumi.Input.fromValue(map['managingTenantId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefinitionPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

