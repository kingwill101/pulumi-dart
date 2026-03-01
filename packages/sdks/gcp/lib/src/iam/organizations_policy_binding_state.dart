// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_policy_binding_condition.dart';
import 'organizations_policy_binding_target.dart';

/// Input properties used for looking up and filtering OrganizationsPolicyBinding resources.
class OrganizationsPolicyBindingState {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Represents a textual expression in the Common Expression Language
  /// (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of
  /// CEL are documented at https://github.com/google/cel-spec.
  /// Example (Comparison):
  /// title: \"Summary size limit\"
  /// description: \"Determines if a summary is less than 100 chars\"
  /// expression: \"document.summary.size() < 100\"
  /// Example
  /// (Equality):
  /// title: \"Requestor is owner\"
  /// description: \"Determines if requestor is the document owner\"
  /// expression: \"document.owner == request.auth.claims.email\"  Example
  /// (Logic):
  /// title: \"Public documents\"
  /// description: \"Determine whether the document should be publicly visible\"
  /// expression: \"document.type != 'private' && document.type != 'internal'\"
  /// Example (Data Manipulation):
  /// title: \"Notification string\"
  /// description: \"Create a notification string with a timestamp.\"
  /// expression: \"'New message received at ' + string(document.create_time)\"
  /// The exact variables and functions that may be referenced within an expression are
  /// determined by the service that evaluates it. See the service documentation for
  /// additional information.
  /// Structure is documented below.
  final pulumi.Input<OrganizationsPolicyBindingCondition>? condition;
  /// Output only. The time when the policy binding was created.
  final pulumi.Input<String>? createTime;
  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;
  /// The location of the Policy Binding
  final pulumi.Input<String>? location;
  /// The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  final pulumi.Input<String>? name;
  /// The parent organization of the Policy Binding.
  final pulumi.Input<String>? organization;
  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  final pulumi.Input<String>? policy;
  /// The Policy Binding ID.
  final pulumi.Input<String>? policyBindingId;
  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  final pulumi.Input<String>? policyKind;
  /// Output only. The globally unique ID of the policy to be bound.
  final pulumi.Input<String>? policyUid;
  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  final pulumi.Input<OrganizationsPolicyBindingTarget>? target;
  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  final pulumi.Input<String>? uid;
  /// Output only. The time when the policy binding was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [OrganizationsPolicyBindingState].
  /// [annotations] Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  /// [condition] Represents a textual expression in the Common Expression Language
  /// [createTime] Output only. The time when the policy binding was created.
  /// [displayName] Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  /// [effectiveAnnotations] Optional.
  /// [etag] Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  /// [location] The location of the Policy Binding
  /// [name] The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  /// [organization] The parent organization of the Policy Binding.
  /// [policy] Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  /// [policyBindingId] The Policy Binding ID.
  /// [policyKind] Immutable. The kind of the policy to attach in this binding. This
  /// [policyUid] Output only. The globally unique ID of the policy to be bound.
  /// [target] Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// [uid] Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  /// [updateTime] Output only. The time when the policy binding was most recently updated.
  OrganizationsPolicyBindingState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<OrganizationsPolicyBindingCondition>? condition,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? policyBindingId,
    pulumi.Output<String>? policyKind,
    pulumi.Output<String>? policyUid,
    pulumi.Output<OrganizationsPolicyBindingTarget>? target,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      condition = pulumi.Input.asOptionalInput<OrganizationsPolicyBindingCondition>(condition),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      policyBindingId = pulumi.Input.asOptionalInput<String>(policyBindingId),
      policyKind = pulumi.Input.asOptionalInput<String>(policyKind),
      policyUid = pulumi.Input.asOptionalInput<String>(policyUid),
      target = pulumi.Input.asOptionalInput<OrganizationsPolicyBindingTarget>(target),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'condition': ?pulumi.Input.mapOptionalInputValue<OrganizationsPolicyBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'policy': ?policy,
      'policyBindingId': ?policyBindingId,
      'policyKind': ?policyKind,
      'policyUid': ?policyUid,
      'target': ?pulumi.Input.mapOptionalInputValue<OrganizationsPolicyBindingTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory OrganizationsPolicyBindingState.fromMap(Map<String, dynamic> map) {
    return OrganizationsPolicyBindingState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      condition: map['condition'] == null ? null : pulumi.Output.create<OrganizationsPolicyBindingCondition>(OrganizationsPolicyBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      policyBindingId: map['policyBindingId'] == null ? null : pulumi.Output.create<String>(map['policyBindingId'] as String),
      policyKind: map['policyKind'] == null ? null : pulumi.Output.create<String>(map['policyKind'] as String),
      policyUid: map['policyUid'] == null ? null : pulumi.Output.create<String>(map['policyUid'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<OrganizationsPolicyBindingTarget>(OrganizationsPolicyBindingTarget.fromMap((map['target'] as Map).cast<String, dynamic>())),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

