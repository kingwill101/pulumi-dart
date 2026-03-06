// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_annotation_admissionregistration_k8s_io_v1alpha1.dart';
import 'match_condition_admissionregistration_k8s_io_v1alpha1.dart';
import 'match_resources_admissionregistration_k8s_io_v1alpha1.dart';
import 'param_kind_admissionregistration_k8s_io_v1alpha1.dart';
import 'validation_admissionregistration_k8s_io_v1alpha1.dart';
import 'variable_admissionregistration_k8s_io_v1alpha1.dart';

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1alpha1 {
  /// auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  final pulumi.Input<List<AuditAnnotationAdmissionregistrationK8sIoV1alpha1>>? auditAnnotations;
  /// FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
  final pulumi.Input<String>? failurePolicy;
  /// MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  ///
  /// If a parameter object is provided, it can be accessed via the `params` handle in the same manner as validation expressions.
  ///
  /// The exact matching logic is (in order):
  /// 1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
  /// 2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
  /// 3. If any matchCondition evaluates to an error (but none are FALSE):
  /// - If failurePolicy=Fail, reject the request
  /// - If failurePolicy=Ignore, the policy is skipped
  final pulumi.Input<List<MatchConditionAdmissionregistrationK8sIoV1alpha1>>? matchConditions;
  /// MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  final pulumi.Input<MatchResourcesAdmissionregistrationK8sIoV1alpha1>? matchConstraints;
  /// ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  final pulumi.Input<ParamKindAdmissionregistrationK8sIoV1alpha1>? paramKind;
  /// Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
  final pulumi.Input<List<ValidationAdmissionregistrationK8sIoV1alpha1>> validations;
  /// Variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  ///
  /// The expression of a variable can refer to other variables defined earlier in the list but not those after. Thus, Variables must be sorted by the order of first appearance and acyclic.
  final pulumi.Input<List<VariableAdmissionregistrationK8sIoV1alpha1>>? variables;

  /// Creates a new [ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1alpha1].
  /// [auditAnnotations] auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  /// [failurePolicy] FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
  /// [matchConditions] MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  /// [matchConstraints] MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  /// [paramKind] ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  /// [validations] Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
  /// [variables] Variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  const ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1alpha1({
    this.auditAnnotations,
    this.failurePolicy,
    this.matchConditions,
    this.matchConstraints,
    this.paramKind,
    required this.validations,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditAnnotations': ?pulumi.Input.mapOptionalInputValue<List<AuditAnnotationAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(auditAnnotations, (value) => pulumi.Input.encodeList<AuditAnnotationAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failurePolicy': ?failurePolicy,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<MatchConditionAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<MatchConditionAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConstraints': ?pulumi.Input.mapOptionalInputValue<MatchResourcesAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(matchConstraints, (value) => value.toMap()),
      'paramKind': ?pulumi.Input.mapOptionalInputValue<ParamKindAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(paramKind, (value) => value.toMap()),
      'validations': pulumi.Input.mapInputValue<List<ValidationAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<ValidationAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variables': ?pulumi.Input.mapOptionalInputValue<List<VariableAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<VariableAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1alpha1(
      auditAnnotations: (() { final guardedValue = map['auditAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuditAnnotationAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => AuditAnnotationAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MatchConditionAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => MatchConditionAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConstraints: (() { final guardedValue = map['matchConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MatchResourcesAdmissionregistrationK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paramKind: (() { final guardedValue = map['paramKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParamKindAdmissionregistrationK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validations: pulumi.Input.fromValue(pulumi.Input.decodeList<ValidationAdmissionregistrationK8sIoV1alpha1>(map['validations']!, (value) => ValidationAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VariableAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => VariableAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

