// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boundary_resource_filter.dart';

/// {@template pulumi_resourcemanager_boundary_boundary_args_doc}
/// The set of arguments for Boundary.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_boundary_boundary_args_doc}
class BoundaryArgs {
  /// The user-assigned ID for the Boundary, which becomes the final component
  /// of the Boundary's resource name. Must be unique within the parent.
  /// Must be 6 to 30 lowercase ASCII letters, digits, or hyphens, must start
  /// with a letter, and may not end with a hyphen.
  final pulumi.Input<String> boundaryId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable display name of the Boundary. When present it must be
  /// between 4 and 30 characters. Allowed characters are lowercase and
  /// uppercase letters, numbers, hyphen, single-quote, double-quote, space,
  /// and exclamation point.
  final pulumi.Input<String?>? displayName;
  /// The parent resource under which the Boundary is created. Must be of the
  /// form `organizations/{organization_id}` or `folders/{folder_id}`.
  final pulumi.Input<String> parent;
  /// The filter defining the criteria for descendant projects to be included
  /// in the Boundary.
  /// `tagValue` is the only part of the filter that can be changed after
  /// creation, and it cannot be cleared.
  /// Structure is documented below.
  final pulumi.Input<BoundaryResourceFilter?>? resourceFilter;

  /// Creates a new [BoundaryArgs].
  /// [boundaryId] The user-assigned ID for the Boundary, which becomes the final component
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable display name of the Boundary. When present it must be
  /// [parent] The parent resource under which the Boundary is created. Must be of the
  /// [resourceFilter] The filter defining the criteria for descendant projects to be included
  const BoundaryArgs({
    required this.boundaryId,
    this.deletionPolicy,
    this.displayName,
    required this.parent,
    this.resourceFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundaryId': boundaryId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'parent': parent,
      'resourceFilter': ?pulumi.Input.mapOptionalInputValue<BoundaryResourceFilter, Map<String, dynamic>>(resourceFilter, (value) => value.toMap()),
    };
  }

  factory BoundaryArgs.fromMap(Map<String, dynamic> map) {
    return BoundaryArgs(
      boundaryId: pulumi.Input.fromValue(map['boundaryId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      resourceFilter: (() { final guardedValue = map['resourceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BoundaryResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
