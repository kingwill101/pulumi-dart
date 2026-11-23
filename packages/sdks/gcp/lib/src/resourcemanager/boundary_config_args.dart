// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_boundary_config_boundary_config_args_doc}
/// The set of arguments for BoundaryConfig.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_boundary_config_boundary_config_args_doc}
class BoundaryConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The parent resource whose BoundaryConfig this is. Must be of the form
  /// `organizations/{organization_id}` or `folders/{folder_id}`.
  final pulumi.Input<String> parent;
  /// The namespaced name of the partitioning tag key, in the form
  /// `{parent_id}/{tag_key_short_name}`, for example `123456789012/env`.
  /// Boundaries under this parent filter projects on this tag key.
  /// The service also accepts the `tagKeys/{numeric_id}` form here, but
  /// Boundaries accept only the namespaced form and are validated against this
  /// value verbatim. Storing the `tagKeys/{numeric_id}` form therefore makes
  /// every subsequent Boundary create fail with `FAILED_PRECONDITION`. Always
  /// use the namespaced form, for example
  /// `google_tags_tag_key.example.namespaced_name`.
  final pulumi.Input<String> tagKey;

  /// Creates a new [BoundaryConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [parent] The parent resource whose BoundaryConfig this is. Must be of the form
  /// [tagKey] The namespaced name of the partitioning tag key, in the form
  const BoundaryConfigArgs({
    this.deletionPolicy,
    required this.parent,
    required this.tagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'parent': parent,
      'tagKey': tagKey,
    };
  }

  factory BoundaryConfigArgs.fromMap(Map<String, dynamic> map) {
    return BoundaryConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
    );
  }
}
