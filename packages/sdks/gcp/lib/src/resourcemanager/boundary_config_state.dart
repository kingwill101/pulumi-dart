// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BoundaryConfig resources.
class BoundaryConfigState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A checksum computed by the server based on the value of other fields. May
  /// be sent on update requests to ensure the client has an up-to-date value
  /// before proceeding.
  final pulumi.Input<String?>? etag;
  /// The unique resource name of the BoundaryConfig, in the form
  /// `organizations/{organization_id}/boundaryConfig` or
  /// `folders/{folder_id}/boundaryConfig`.
  final pulumi.Input<String?>? name;
  /// The parent resource whose BoundaryConfig this is. Must be of the form
  /// `organizations/{organization_id}` or `folders/{folder_id}`.
  final pulumi.Input<String?>? parent;
  /// The namespaced name of the partitioning tag key, in the form
  /// `{parent_id}/{tag_key_short_name}`, for example `123456789012/env`.
  /// Boundaries under this parent filter projects on this tag key.
  /// The service also accepts the `tagKeys/{numeric_id}` form here, but
  /// Boundaries accept only the namespaced form and are validated against this
  /// value verbatim. Storing the `tagKeys/{numeric_id}` form therefore makes
  /// every subsequent Boundary create fail with `FAILED_PRECONDITION`. Always
  /// use the namespaced form, for example
  /// `google_tags_tag_key.example.namespaced_name`.
  final pulumi.Input<String?>? tagKey;
  /// The most recent time this BoundaryConfig was modified.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [BoundaryConfigState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] A checksum computed by the server based on the value of other fields. May
  /// [name] The unique resource name of the BoundaryConfig, in the form
  /// [parent] The parent resource whose BoundaryConfig this is. Must be of the form
  /// [tagKey] The namespaced name of the partitioning tag key, in the form
  /// [updateTime] The most recent time this BoundaryConfig was modified.
  const BoundaryConfigState({
    this.deletionPolicy,
    this.etag,
    this.name,
    this.parent,
    this.tagKey,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'name': ?name,
      'parent': ?parent,
      'tagKey': ?tagKey,
      'updateTime': ?updateTime,
    };
  }

  factory BoundaryConfigState.fromMap(Map<String, dynamic> map) {
    return BoundaryConfigState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagKey: (() { final guardedValue = map['tagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
