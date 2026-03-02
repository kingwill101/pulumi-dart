// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule.dart';
import 'automation_selector.dart';

/// Input properties used for looking up and filtering Automation resources.
class AutomationState {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. Time at which the automation was created.
  final pulumi.Input<String>? createTime;
  /// The delivery_pipeline for the resource
  final pulumi.Input<String>? deliveryPipeline;
  /// Optional. Description of the `Automation`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Name of the `Automation`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// Structure is documented below.
  final pulumi.Input<List<AutomationRule>>? rules;
  /// Required. Selected resources to which the automation will be applied.
  /// Structure is documented below.
  final pulumi.Input<AutomationSelector>? selector;
  /// Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. When Suspended, automation is deactivated from execution.
  final pulumi.Input<bool>? suspended;
  /// Output only. Unique identifier of the `Automation`.
  final pulumi.Input<String>? uid;
  /// Output only. Time at which the automation was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AutomationState].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// [createTime] Output only. Time at which the automation was created.
  /// [deliveryPipeline] The delivery_pipeline for the resource
  /// [description] Optional. Description of the `Automation`. Max length is 255 characters.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// [location] The location for the resource
  /// [name] Name of the `Automation`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rules] Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// [selector] Required. Selected resources to which the automation will be applied.
  /// [serviceAccount] Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  /// [suspended] Optional. When Suspended, automation is deactivated from execution.
  /// [uid] Output only. Unique identifier of the `Automation`.
  /// [updateTime] Output only. Time at which the automation was updated.
  AutomationState({
    this.annotations,
    this.createTime,
    this.deliveryPipeline,
    this.description,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.rules,
    this.selector,
    this.serviceAccount,
    this.suspended,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deliveryPipeline': ?deliveryPipeline,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AutomationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AutomationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': ?pulumi.Input.mapOptionalInputValue<AutomationSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'suspended': ?suspended,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory AutomationState.fromMap(Map<String, dynamic> map) {
    return AutomationState(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deliveryPipeline: map['deliveryPipeline'] == null ? null : (map['deliveryPipeline'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations'] as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<AutomationRule>(map['rules'], (value) => AutomationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selector: map['selector'] == null ? null : (AutomationSelector.fromMap((map['selector'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      suspended: map['suspended'] == null ? null : (map['suspended'] as bool).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

