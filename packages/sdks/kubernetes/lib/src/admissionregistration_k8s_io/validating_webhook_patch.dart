// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';
import 'match_condition_patch.dart';
import 'rule_with_operations_patch.dart';
import 'webhook_client_config_patch.dart';

/// ValidatingWebhook describes an admission webhook and the resources and operations it applies to.
class ValidatingWebhookPatch {
  /// AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
  final List<String>? admissionReviewVersions;
  /// ClientConfig defines how to communicate with the hook. Required
  final WebhookClientConfigPatch? clientConfig;
  /// FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
  final String? failurePolicy;
  /// MatchConditions is a list of conditions that must be met for a request to be sent to this webhook. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  ///
  /// The exact matching logic is (in order):
  /// 1. If ANY matchCondition evaluates to FALSE, the webhook is skipped.
  /// 2. If ALL matchConditions evaluate to TRUE, the webhook is called.
  /// 3. If any matchCondition evaluates to an error (but none are FALSE):
  /// - If failurePolicy=Fail, reject the request
  /// - If failurePolicy=Ignore, the error is ignored and the webhook is skipped
  final List<MatchConditionPatch>? matchConditions;
  /// matchPolicy defines how the "rules" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
  ///
  /// - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.
  ///
  /// - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.
  ///
  /// Defaults to "Equivalent"
  final String? matchPolicy;
  /// The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
  final String? name;
  /// NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.
  ///
  /// For example, to run the webhook on any objects whose namespace is not associated with "runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
  /// "matchExpressions": [
  /// {
  /// "key": "runlevel",
  /// "operator": "NotIn",
  /// "values": [
  /// "0",
  /// "1"
  /// ]
  /// }
  /// ]
  /// }
  ///
  /// If instead you want to only run the webhook on any objects whose namespace is associated with the "environment" of "prod" or "staging"; you will set the selector as follows: "namespaceSelector": {
  /// "matchExpressions": [
  /// {
  /// "key": "environment",
  /// "operator": "In",
  /// "values": [
  /// "prod",
  /// "staging"
  /// ]
  /// }
  /// ]
  /// }
  ///
  /// See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.
  ///
  /// Default to the empty LabelSelector, which matches everything.
  final LabelSelectorPatch? namespaceSelector;
  /// ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
  final LabelSelectorPatch? objectSelector;
  /// Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.
  final List<RuleWithOperationsPatch>? rules;
  /// SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
  final String? sideEffects;
  /// TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
  final int? timeoutSeconds;

  /// Creates a new [ValidatingWebhookPatch].
  /// [admissionReviewVersions] AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
  /// [clientConfig] ClientConfig defines how to communicate with the hook. Required
  /// [failurePolicy] FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
  /// [matchConditions] MatchConditions is a list of conditions that must be met for a request to be sent to this webhook. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  /// [matchPolicy] matchPolicy defines how the "rules" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
  /// [name] The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
  /// [namespaceSelector] NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.
  /// [objectSelector] ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
  /// [rules] Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.
  /// [sideEffects] SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
  /// [timeoutSeconds] TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
  ValidatingWebhookPatch({
    this.admissionReviewVersions,
    this.clientConfig,
    this.failurePolicy,
    this.matchConditions,
    this.matchPolicy,
    this.name,
    this.namespaceSelector,
    this.objectSelector,
    this.rules,
    this.sideEffects,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admissionReviewVersions': ?admissionReviewVersions,
      'clientConfig': ?clientConfig == null ? null : clientConfig!.toMap(),
      'failurePolicy': ?failurePolicy,
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<MatchConditionPatch, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
      'matchPolicy': ?matchPolicy,
      'name': ?name,
      'namespaceSelector': ?namespaceSelector == null ? null : namespaceSelector!.toMap(),
      'objectSelector': ?objectSelector == null ? null : objectSelector!.toMap(),
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RuleWithOperationsPatch, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'sideEffects': ?sideEffects,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ValidatingWebhookPatch.fromMap(Map<String, dynamic> map) {
    return ValidatingWebhookPatch(
      admissionReviewVersions: map['admissionReviewVersions'] == null ? null : (map['admissionReviewVersions'] as List).cast<String>(),
      clientConfig: map['clientConfig'] == null ? null : WebhookClientConfigPatch.fromMap((map['clientConfig'] as Map).cast<String, dynamic>()),
      failurePolicy: map['failurePolicy'] == null ? null : map['failurePolicy'] as String,
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<MatchConditionPatch>(map['matchConditions'], (value) => MatchConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      matchPolicy: map['matchPolicy'] == null ? null : map['matchPolicy'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespaceSelector: map['namespaceSelector'] == null ? null : LabelSelectorPatch.fromMap((map['namespaceSelector'] as Map).cast<String, dynamic>()),
      objectSelector: map['objectSelector'] == null ? null : LabelSelectorPatch.fromMap((map['objectSelector'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RuleWithOperationsPatch>(map['rules'], (value) => RuleWithOperationsPatch.fromMap((value as Map).cast<String, dynamic>())),
      sideEffects: map['sideEffects'] == null ? null : map['sideEffects'] as String,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

