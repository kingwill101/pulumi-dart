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
    this.annotations,
    this.condition,
    this.createTime,
    this.displayName,
    this.effectiveAnnotations,
    this.etag,
    this.location,
    this.name,
    this.organization,
    this.policy,
    this.policyBindingId,
    this.policyKind,
    this.policyUid,
    this.target,
    this.uid,
    this.updateTime,
  });

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
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      condition: map['condition'] == null ? null : (OrganizationsPolicyBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      policyBindingId: map['policyBindingId'] == null ? null : (map['policyBindingId']! as String).input(),
      policyKind: map['policyKind'] == null ? null : (map['policyKind']! as String).input(),
      policyUid: map['policyUid'] == null ? null : (map['policyUid']! as String).input(),
      target: map['target'] == null ? null : (OrganizationsPolicyBindingTarget.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

