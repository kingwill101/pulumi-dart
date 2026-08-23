// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_condition.dart';
import 'match_resources.dart';
import 'mutation.dart';
import 'param_kind.dart';
import 'variable.dart';

/// MutatingAdmissionPolicySpec defines the desired behavior of the admission policy.
class MutatingAdmissionPolicySpec {
  /// failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  ///
  /// A policy is invalid if paramKind refers to a non-existent Kind. A binding is invalid if paramRef.name refers to a non-existent resource.
  ///
  /// failurePolicy does not define how validations that evaluate to false are handled.
  ///
  /// Allowed values are Ignore or Fail. Defaults to Fail.
  final pulumi.Input<String>? failurePolicy;
  /// matchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the matchConstraints. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  ///
  /// If a parameter object is provided, it can be accessed via the `params` handle in the same manner as validation expressions.
  ///
  /// The exact matching logic is (in order):
  /// 1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
  /// 2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
  /// 3. If any matchCondition evaluates to an error (but none are FALSE):
  /// - If failurePolicy=Fail, reject the request
  /// - If failurePolicy=Ignore, the policy is skipped
  final pulumi.Input<List<MatchCondition>>? matchConditions;
  /// matchConstraints specifies what resources this policy is designed to validate. The MutatingAdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API MutatingAdmissionPolicy cannot match MutatingAdmissionPolicy and MutatingAdmissionPolicyBinding. The CREATE, UPDATE and CONNECT operations are allowed.  The DELETE operation may not be matched. '*' matches CREATE, UPDATE and CONNECT. Required.
  final pulumi.Input<MatchResources>? matchConstraints;
  /// mutations contain operations to perform on matching objects. mutations may not be empty; a minimum of one mutation is required. mutations are evaluated in order, and are reinvoked according to the reinvocationPolicy. The mutations of a policy are invoked for each binding of this policy and reinvocation of mutations occurs on a per binding basis.
  final pulumi.Input<List<Mutation>>? mutations;
  /// paramKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If paramKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in MutatingAdmissionPolicyBinding, the params variable will be null.
  final pulumi.Input<ParamKind>? paramKind;
  /// reinvocationPolicy indicates whether mutations may be called multiple times per MutatingAdmissionPolicyBinding as part of a single admission evaluation. Allowed values are "Never" and "IfNeeded".
  ///
  /// Never: These mutations will not be called more than once per binding in a single admission evaluation.
  ///
  /// IfNeeded: These mutations may be invoked more than once per binding for a single admission request and there is no guarantee of order with respect to other admission plugins, admission webhooks, bindings of this policy and admission policies.  Mutations are only reinvoked when mutations change the object after this mutation is invoked. Required.
  final pulumi.Input<String>? reinvocationPolicy;
  /// variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except matchConditions because matchConditions are evaluated before the rest of the policy.
  ///
  /// The expression of a variable can refer to other variables defined earlier in the list but not those after. Thus, variables must be sorted by the order of first appearance and acyclic.
  final pulumi.Input<List<Variable>>? variables;

  /// Creates a new [MutatingAdmissionPolicySpec].
  /// [failurePolicy] failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  /// [matchConditions] matchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the matchConstraints. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  /// [matchConstraints] matchConstraints specifies what resources this policy is designed to validate. The MutatingAdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API MutatingAdmissionPolicy cannot match MutatingAdmissionPolicy and MutatingAdmissionPolicyBinding. The CREATE, UPDATE and CONNECT operations are allowed.  The DELETE operation may not be matched. '*' matches CREATE, UPDATE and CONNECT. Required.
  /// [mutations] mutations contain operations to perform on matching objects. mutations may not be empty; a minimum of one mutation is required. mutations are evaluated in order, and are reinvoked according to the reinvocationPolicy. The mutations of a policy are invoked for each binding of this policy and reinvocation of mutations occurs on a per binding basis.
  /// [paramKind] paramKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If paramKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in MutatingAdmissionPolicyBinding, the params variable will be null.
  /// [reinvocationPolicy] reinvocationPolicy indicates whether mutations may be called multiple times per MutatingAdmissionPolicyBinding as part of a single admission evaluation. Allowed values are "Never" and "IfNeeded".
  /// [variables] variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except matchConditions because matchConditions are evaluated before the rest of the policy.
  const MutatingAdmissionPolicySpec({
    this.failurePolicy,
    this.matchConditions,
    this.matchConstraints,
    this.mutations,
    this.paramKind,
    this.reinvocationPolicy,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failurePolicy': ?failurePolicy,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<MatchCondition>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<MatchCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConstraints': ?pulumi.Input.mapOptionalInputValue<MatchResources, Map<String, dynamic>>(matchConstraints, (value) => value.toMap()),
      'mutations': ?pulumi.Input.mapOptionalInputValue<List<Mutation>, List<Map<String, dynamic>>>(mutations, (value) => pulumi.Input.encodeList<Mutation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paramKind': ?pulumi.Input.mapOptionalInputValue<ParamKind, Map<String, dynamic>>(paramKind, (value) => value.toMap()),
      'reinvocationPolicy': ?reinvocationPolicy,
      'variables': ?pulumi.Input.mapOptionalInputValue<List<Variable>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<Variable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MutatingAdmissionPolicySpec.fromMap(Map<String, dynamic> map) {
    return MutatingAdmissionPolicySpec(
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MatchCondition>(guardedValue, (value) => MatchCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConstraints: (() { final guardedValue = map['matchConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MatchResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mutations: (() { final guardedValue = map['mutations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Mutation>(guardedValue, (value) => Mutation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      paramKind: (() { final guardedValue = map['paramKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParamKind.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reinvocationPolicy: (() { final guardedValue = map['reinvocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Variable>(guardedValue, (value) => Variable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
