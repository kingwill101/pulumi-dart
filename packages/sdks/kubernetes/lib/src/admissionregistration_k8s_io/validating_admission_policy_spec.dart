// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_annotation.dart';
import 'match_condition.dart';
import 'match_resources.dart';
import 'param_kind.dart';
import 'validation.dart';
import 'variable.dart';

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpec {
  /// auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  final pulumi.Input<List<AuditAnnotation>?>? auditAnnotations;
  /// failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  ///
  /// A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource.
  ///
  /// failurePolicy does not define how validations that evaluate to false are handled.
  ///
  /// When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions define how failures are enforced.
  ///
  /// Allowed values are Ignore or Fail. Defaults to Fail.
  final pulumi.Input<String?>? failurePolicy;
  /// matchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  ///
  /// If a parameter object is provided, it can be accessed via the `params` handle in the same manner as validation expressions.
  ///
  /// The exact matching logic is (in order):
  /// 1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
  /// 2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
  /// 3. If any matchCondition evaluates to an error (but none are FALSE):
  /// - If failurePolicy=Fail, reject the request
  /// - If failurePolicy=Ignore, the policy is skipped
  final pulumi.Input<List<MatchCondition>?>? matchConditions;
  /// matchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  final pulumi.Input<MatchResources?>? matchConstraints;
  /// paramKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  final pulumi.Input<ParamKind?>? paramKind;
  /// validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  final pulumi.Input<List<Validation>?>? validations;
  /// variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  ///
  /// The expression of a variable can refer to other variables defined earlier in the list but not those after. Thus, Variables must be sorted by the order of first appearance and acyclic.
  final pulumi.Input<List<Variable>?>? variables;

  /// Creates a new [ValidatingAdmissionPolicySpec].
  /// [auditAnnotations] auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  /// [failurePolicy] failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  /// [matchConditions] matchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  /// [matchConstraints] matchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  /// [paramKind] paramKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  /// [validations] validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  /// [variables] variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  const ValidatingAdmissionPolicySpec({
    this.auditAnnotations,
    this.failurePolicy,
    this.matchConditions,
    this.matchConstraints,
    this.paramKind,
    this.validations,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditAnnotations': ?pulumi.Input.mapOptionalInputValue<List<AuditAnnotation>, List<Map<String, dynamic>>>(auditAnnotations, (value) => pulumi.Input.encodeList<AuditAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failurePolicy': ?failurePolicy,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<MatchCondition>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<MatchCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConstraints': ?pulumi.Input.mapOptionalInputValue<MatchResources, Map<String, dynamic>>(matchConstraints, (value) => value.toMap()),
      'paramKind': ?pulumi.Input.mapOptionalInputValue<ParamKind, Map<String, dynamic>>(paramKind, (value) => value.toMap()),
      'validations': ?pulumi.Input.mapOptionalInputValue<List<Validation>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<Validation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variables': ?pulumi.Input.mapOptionalInputValue<List<Variable>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<Variable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidatingAdmissionPolicySpec.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicySpec(
      auditAnnotations: (() { final guardedValue = map['auditAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuditAnnotation>(guardedValue, (value) => AuditAnnotation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MatchCondition>(guardedValue, (value) => MatchCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConstraints: (() { final guardedValue = map['matchConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MatchResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paramKind: (() { final guardedValue = map['paramKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParamKind.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validations: (() { final guardedValue = map['validations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Validation>(guardedValue, (value) => Validation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Variable>(guardedValue, (value) => Variable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
