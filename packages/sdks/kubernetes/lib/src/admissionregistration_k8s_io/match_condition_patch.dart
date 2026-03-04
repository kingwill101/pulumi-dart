// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MatchCondition represents a condition which must by fulfilled for a request to be sent to a webhook.
class MatchConditionPatch {
  /// Expression represents the expression which will be evaluated by CEL. Must evaluate to bool. CEL expressions have access to the contents of the AdmissionRequest and Authorizer, organized into CEL variables:
  ///
  /// 'object' - The object from the incoming request. The value is null for DELETE requests. 'oldObject' - The existing object. The value is null for CREATE requests. 'request' - Attributes of the admission request(/pkg/apis/admission/types.go#AdmissionRequest). 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the principal (user or service account) of the request.
  /// See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
  /// 'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and configured with the
  /// request resource.
  /// Documentation on CEL: https://kubernetes.io/docs/reference/using-api/cel/
  ///
  /// Required.
  final pulumi.Input<String>? expression;

  /// Name is an identifier for this match condition, used for strategic merging of MatchConditions, as well as providing an identifier for logging purposes. A good name should be descriptive of the associated expression. Name must be a qualified name consisting of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character (e.g. 'MyName',  or 'my.name',  or '123-abc', regex used for validation is '([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]') with an optional DNS subdomain prefix and '/' (e.g. 'example.com/MyName')
  ///
  /// Required.
  final pulumi.Input<String>? name;

  /// Creates a new [MatchConditionPatch].
  /// [expression] Expression represents the expression which will be evaluated by CEL. Must evaluate to bool. CEL expressions have access to the contents of the AdmissionRequest and Authorizer, organized into CEL variables:
  /// [name] Name is an identifier for this match condition, used for strategic merging of MatchConditions, as well as providing an identifier for logging purposes. A good name should be descriptive of the associated expression. Name must be a qualified name consisting of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character (e.g. 'MyName',  or 'my.name',  or '123-abc', regex used for validation is '([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]') with an optional DNS subdomain prefix and '/' (e.g. 'example.com/MyName')
  MatchConditionPatch({this.expression, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expression': ?expression, 'name': ?name};
  }

  factory MatchConditionPatch.fromMap(Map<String, dynamic> map) {
    return MatchConditionPatch(
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
