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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deliveryPipeline,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<AutomationRule>>? rules,
    pulumi.Output<AutomationSelector>? selector,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<bool>? suspended,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deliveryPipeline = pulumi.Input.asOptionalInput<String>(deliveryPipeline),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      rules = pulumi.Input.asOptionalInput<List<AutomationRule>>(rules),
      selector = pulumi.Input.asOptionalInput<AutomationSelector>(selector),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deliveryPipeline: map['deliveryPipeline'] == null ? null : pulumi.Output.create<String>(map['deliveryPipeline'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<AutomationRule>>(pulumi.Input.decodeList<AutomationRule>(map['rules'], (value) => AutomationRule.fromMap((value as Map).cast<String, dynamic>()))),
      selector: map['selector'] == null ? null : pulumi.Output.create<AutomationSelector>(AutomationSelector.fromMap((map['selector'] as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

