// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boundary_resource_filter.dart';

/// Input properties used for looking up and filtering Boundary resources.
class BoundaryState {
  /// The user-assigned ID for the Boundary, which becomes the final component
  /// of the Boundary's resource name. Must be unique within the parent.
  /// Must be 6 to 30 lowercase ASCII letters, digits, or hyphens, must start
  /// with a letter, and may not end with a hyphen.
  final pulumi.Input<String?>? boundaryId;
  /// The creation time of the Boundary.
  final pulumi.Input<String?>? createTime;
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
  /// A checksum computed by the server based on the value of other fields. May
  /// be sent on update requests to ensure the client has an up-to-date value
  /// before proceeding.
  final pulumi.Input<String?>? etag;
  /// The Management Project associated with this Boundary, in the form
  /// `projects/{project_number}`. This is populated by the service when the
  /// Boundary is associated with a CapabilityConfig; it cannot be set directly
  /// on the Boundary. To choose a management project, set it on the
  /// `gcp.resourcemanager.CapabilityConfig` resource instead.
  final pulumi.Input<String?>? managementProject;
  /// The unique resource name of the Boundary, in the form
  /// `organizations/{organization_id}/boundaries/{boundary_id}` or
  /// `folders/{folder_id}/boundaries/{boundary_id}`.
  final pulumi.Input<String?>? name;
  /// The parent resource under which the Boundary is created. Must be of the
  /// form `organizations/{organization_id}` or `folders/{folder_id}`.
  final pulumi.Input<String?>? parent;
  /// The filter defining the criteria for descendant projects to be included
  /// in the Boundary.
  /// `tagValue` is the only part of the filter that can be changed after
  /// creation, and it cannot be cleared.
  /// Structure is documented below.
  final pulumi.Input<BoundaryResourceFilter?>? resourceFilter;
  /// The lifecycle state of the Boundary. Possible values are `CREATING` and
  /// `ACTIVE`.
  final pulumi.Input<String?>? state;
  /// The most recent time this Boundary was modified.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [BoundaryState].
  /// [boundaryId] The user-assigned ID for the Boundary, which becomes the final component
  /// [createTime] The creation time of the Boundary.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable display name of the Boundary. When present it must be
  /// [etag] A checksum computed by the server based on the value of other fields. May
  /// [managementProject] The Management Project associated with this Boundary, in the form
  /// [name] The unique resource name of the Boundary, in the form
  /// [parent] The parent resource under which the Boundary is created. Must be of the
  /// [resourceFilter] The filter defining the criteria for descendant projects to be included
  /// [state] The lifecycle state of the Boundary. Possible values are `CREATING` and
  /// [updateTime] The most recent time this Boundary was modified.
  const BoundaryState({
    this.boundaryId,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.etag,
    this.managementProject,
    this.name,
    this.parent,
    this.resourceFilter,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundaryId': ?boundaryId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'etag': ?etag,
      'managementProject': ?managementProject,
      'name': ?name,
      'parent': ?parent,
      'resourceFilter': ?pulumi.Input.mapOptionalInputValue<BoundaryResourceFilter, Map<String, dynamic>>(resourceFilter, (value) => value.toMap()),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory BoundaryState.fromMap(Map<String, dynamic> map) {
    return BoundaryState(
      boundaryId: (() { final guardedValue = map['boundaryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementProject: (() { final guardedValue = map['managementProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceFilter: (() { final guardedValue = map['resourceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BoundaryResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
