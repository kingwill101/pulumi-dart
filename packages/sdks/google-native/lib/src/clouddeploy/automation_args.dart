// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_resource_selector.dart';
import 'automation_rule.dart';

/// {@template pulumi_clouddeploy_v1_automation_args_doc}
/// The set of arguments for Automation.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_automation_args_doc}
class AutomationArgs {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Required. ID of the `Automation`.
  final pulumi.Input<String> automationId;
  final pulumi.Input<String> deliveryPipelineId;
  /// Optional. Description of the `Automation`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  final pulumi.Input<List<AutomationRule>> rules;
  /// Selected resources to which the automation will be applied.
  final pulumi.Input<AutomationResourceSelector> selector;
  /// Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  final pulumi.Input<String> serviceAccount;
  /// Optional. When Suspended, automation is deactivated from execution.
  final pulumi.Input<bool>? suspended;

  /// Creates a new [AutomationArgs].
  /// [annotations] Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// [automationId] Required. ID of the `Automation`.
  /// [deliveryPipelineId] Required.
  /// [description] Optional. Description of the `Automation`. Max length is 255 characters.
  /// [etag] Optional. The weak etag of the `Automation` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [rules] List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution.
  /// [selector] Selected resources to which the automation will be applied.
  /// [serviceAccount] Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources.
  /// [suspended] Optional. When Suspended, automation is deactivated from execution.
  AutomationArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> automationId,
    required pulumi.Output<String> deliveryPipelineId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<List<AutomationRule>> rules,
    required pulumi.Output<AutomationResourceSelector> selector,
    required pulumi.Output<String> serviceAccount,
    pulumi.Output<bool>? suspended,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      automationId = pulumi.Input.asInput<String>(automationId),
      deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      rules = pulumi.Input.asInput<List<AutomationRule>>(rules),
      selector = pulumi.Input.asInput<AutomationResourceSelector>(selector),
      serviceAccount = pulumi.Input.asInput<String>(serviceAccount),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automationId': automationId,
      'deliveryPipelineId': deliveryPipelineId,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'rules': pulumi.Input.mapInputValue<List<AutomationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AutomationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': pulumi.Input.mapInputValue<AutomationResourceSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'suspended': ?suspended,
    };
  }

  factory AutomationArgs.fromMap(Map<String, dynamic> map) {
    return AutomationArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      automationId: pulumi.Output.create<String>(map['automationId'] as String),
      deliveryPipelineId: pulumi.Output.create<String>(map['deliveryPipelineId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      rules: pulumi.Output.create<List<AutomationRule>>(pulumi.Input.decodeList<AutomationRule>(map['rules'], (value) => AutomationRule.fromMap((value as Map).cast<String, dynamic>()))),
      selector: pulumi.Output.create<AutomationResourceSelector>(AutomationResourceSelector.fromMap((map['selector'] as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Output.create<String>(map['serviceAccount'] as String),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
    );
  }
}

