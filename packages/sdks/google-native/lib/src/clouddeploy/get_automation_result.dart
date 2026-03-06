// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_resource_selector_response.dart';
import 'automation_rule_response.dart';

/// Result data returned by getAutomation.
class GetAutomationResult {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  final Map<String, String> annotations;
  /// Time at which the automation was created.
  final String createTime;
  /// Optional. Description of the `Automation`. Max length is 255 characters.
  final String description;
  /// Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.
  final Map<String, String> labels;
  /// Name of the `Automation`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automations/{automation}`.
  final String name;
  /// List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  final List<AutomationRuleResponse> rules;
  /// Selected resources to which the automation will be applied.
  final AutomationResourceSelectorResponse selector;
  /// Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  final String serviceAccount;
  /// Optional. When Suspended, automation is deactivated from execution.
  final bool suspended;
  /// Unique identifier of the `Automation`.
  final String uid;
  /// Time at which the automation was updated.
  final String updateTime;

  /// Creates a new [GetAutomationResult].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// [createTime] Time at which the automation was created.
  /// [description] Optional. Description of the `Automation`. Max length is 255 characters.
  /// [etag] Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.
  /// [name] Name of the `Automation`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automations/{automation}`.
  /// [rules] List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// [selector] Selected resources to which the automation will be applied.
  /// [serviceAccount] Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  /// [suspended] Optional. When Suspended, automation is deactivated from execution.
  /// [uid] Unique identifier of the `Automation`.
  /// [updateTime] Time at which the automation was updated.
  const GetAutomationResult({
    required this.annotations,
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.rules,
    required this.selector,
    required this.serviceAccount,
    required this.suspended,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'labels': labels,
      'name': name,
      'rules': pulumi.Input.encodeList<AutomationRuleResponse, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'selector': selector.toMap(),
      'serviceAccount': serviceAccount,
      'suspended': suspended,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetAutomationResult.fromMap(Map<String, dynamic> map) {
    return GetAutomationResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      rules: pulumi.Input.decodeList<AutomationRuleResponse>(map['rules']!, (value) => AutomationRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      selector: AutomationResourceSelectorResponse.fromMap((map['selector']! as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      suspended: map['suspended'] as bool,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

