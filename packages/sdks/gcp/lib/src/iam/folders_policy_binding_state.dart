// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folders_policy_binding_condition.dart';
import 'folders_policy_binding_target.dart';

/// Input properties used for looking up and filtering FoldersPolicyBinding resources.
class FoldersPolicyBindingState {
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
  /// expression: \"document.summary.size() &lt; 100\"
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
  final pulumi.Input<FoldersPolicyBindingCondition>? condition;

  /// Output only. The time when the policy binding was created.
  final pulumi.Input<String>? createTime;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;

  /// Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;

  /// The parent folder for the PolicyBinding.
  final pulumi.Input<String>? folder;

  /// The location of the PolicyBinding.
  final pulumi.Input<String>? location;

  /// The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  final pulumi.Input<String>? name;

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
  final pulumi.Input<FoldersPolicyBindingTarget>? target;

  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  final pulumi.Input<String>? uid;

  /// Output only. The time when the policy binding was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FoldersPolicyBindingState].
  /// [annotations] Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  /// [condition] Represents a textual expression in the Common Expression Language
  /// [createTime] Output only. The time when the policy binding was created.
  /// [displayName] Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  /// [effectiveAnnotations] Optional.
  /// [etag] Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  /// [folder] The parent folder for the PolicyBinding.
  /// [location] The location of the PolicyBinding.
  /// [name] The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  /// [policy] Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  /// [policyBindingId] The Policy Binding ID.
  /// [policyKind] Immutable. The kind of the policy to attach in this binding. This
  /// [policyUid] Output only. The globally unique ID of the policy to be bound.
  /// [target] Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// [uid] Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  /// [updateTime] Output only. The time when the policy binding was most recently updated.
  FoldersPolicyBindingState({
    this.annotations,
    this.condition,
    this.createTime,
    this.displayName,
    this.effectiveAnnotations,
    this.etag,
    this.folder,
    this.location,
    this.name,
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
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            FoldersPolicyBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'folder': ?folder,
      'location': ?location,
      'name': ?name,
      'policy': ?policy,
      'policyBindingId': ?policyBindingId,
      'policyKind': ?policyKind,
      'policyUid': ?policyUid,
      'target':
          ?pulumi.Input.mapOptionalInputValue<
            FoldersPolicyBindingTarget,
            Map<String, dynamic>
          >(target, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory FoldersPolicyBindingState.fromMap(Map<String, dynamic> map) {
    return FoldersPolicyBindingState(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FoldersPolicyBindingCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveAnnotations: (() {
        final guardedValue = map['effectiveAnnotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyBindingId: (() {
        final guardedValue = map['policyBindingId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyKind: (() {
        final guardedValue = map['policyKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyUid: (() {
        final guardedValue = map['policyUid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FoldersPolicyBindingTarget.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
