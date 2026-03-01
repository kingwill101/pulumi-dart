// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_condition.dart';

/// Input properties used for looking up and filtering IAMBinding resources.
class IAMBindingState {
  final pulumi.Input<IAMBindingCondition>? condition;
  /// (Computed) The etag of the folder's IAM policy.
  final pulumi.Input<String>? etag;
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String>? folder;
  /// An array of identities that will be granted the privilege in the `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that is associated with a specific Google account. For example, alice@gmail.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  final pulumi.Input<List<String>>? members;
  /// The role that should be applied. Only one
  /// `gcp.folder.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [IAMBindingState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the folder's IAM policy.
  /// [folder] The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  /// [members] An array of identities that will be granted the privilege in the `role`.
  /// [role] The role that should be applied. Only one
  IAMBindingState({
    pulumi.Output<IAMBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? folder,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<IAMBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'folder': ?folder,
      'members': ?members,
      'role': ?role,
    };
  }

  factory IAMBindingState.fromMap(Map<String, dynamic> map) {
    return IAMBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<IAMBindingCondition>(IAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

