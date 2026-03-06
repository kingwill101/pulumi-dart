// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_annotation_patch_admissionregistration_k8s_io_v1beta1.dart';
import 'match_condition_patch_admissionregistration_k8s_io_v1beta1.dart';
import 'match_resources_patch_admissionregistration_k8s_io_v1beta1.dart';
import 'param_kind_patch_admissionregistration_k8s_io_v1beta1.dart';
import 'validation_patch_admissionregistration_k8s_io_v1beta1.dart';
import 'variable_patch_admissionregistration_k8s_io_v1beta1.dart';

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpecPatchAdmissionregistrationK8sIoV1beta1 {
  /// auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  final pulumi.Input<List<AuditAnnotationPatchAdmissionregistrationK8sIoV1beta1>>? auditAnnotations;
  /// failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  ///
  /// A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource.
  ///
  /// failurePolicy does not define how validations that evaluate to false are handled.
  ///
  /// When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions define how failures are enforced.
  ///
  /// Allowed values are Ignore or Fail. Defaults to Fail.
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
  final pulumi.Input<List<MatchConditionPatchAdmissionregistrationK8sIoV1beta1>>? matchConditions;
  /// MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  final pulumi.Input<MatchResourcesPatchAdmissionregistrationK8sIoV1beta1>? matchConstraints;
  /// ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  final pulumi.Input<ParamKindPatchAdmissionregistrationK8sIoV1beta1>? paramKind;
  /// Validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  final pulumi.Input<List<ValidationPatchAdmissionregistrationK8sIoV1beta1>>? validations;
  /// Variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  ///
  /// The expression of a variable can refer to other variables defined earlier in the list but not those after. Thus, Variables must be sorted by the order of first appearance and acyclic.
  final pulumi.Input<List<VariablePatchAdmissionregistrationK8sIoV1beta1>>? variables;

  /// Creates a new [ValidatingAdmissionPolicySpecPatchAdmissionregistrationK8sIoV1beta1].
  /// [auditAnnotations] auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  /// [failurePolicy] failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  /// [matchConditions] MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  /// [matchConstraints] MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  /// [paramKind] ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  /// [validations] Validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  /// [variables] Variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  const ValidatingAdmissionPolicySpecPatchAdmissionregistrationK8sIoV1beta1({
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
      'auditAnnotations': ?pulumi.Input.mapOptionalInputValue<List<AuditAnnotationPatchAdmissionregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(auditAnnotations, (value) => pulumi.Input.encodeList<AuditAnnotationPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failurePolicy': ?failurePolicy,
      'matchConditions': ?pulumi.Input.mapOptionalInputValue<List<MatchConditionPatchAdmissionregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<MatchConditionPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchConstraints': ?pulumi.Input.mapOptionalInputValue<MatchResourcesPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(matchConstraints, (value) => value.toMap()),
      'paramKind': ?pulumi.Input.mapOptionalInputValue<ParamKindPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(paramKind, (value) => value.toMap()),
      'validations': ?pulumi.Input.mapOptionalInputValue<List<ValidationPatchAdmissionregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<ValidationPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variables': ?pulumi.Input.mapOptionalInputValue<List<VariablePatchAdmissionregistrationK8sIoV1beta1>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<VariablePatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidatingAdmissionPolicySpecPatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicySpecPatchAdmissionregistrationK8sIoV1beta1(
      auditAnnotations: (() { final guardedValue = map['auditAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuditAnnotationPatchAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => AuditAnnotationPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: (() { final guardedValue = map['matchConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MatchConditionPatchAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => MatchConditionPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchConstraints: (() { final guardedValue = map['matchConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MatchResourcesPatchAdmissionregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paramKind: (() { final guardedValue = map['paramKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParamKindPatchAdmissionregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validations: (() { final guardedValue = map['validations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ValidationPatchAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => ValidationPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VariablePatchAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => VariablePatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

