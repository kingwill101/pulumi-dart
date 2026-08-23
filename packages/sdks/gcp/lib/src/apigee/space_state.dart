// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Space resources.
class SpaceState {
  /// Create timestamp of the space.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the Space.
  final pulumi.Input<String>? displayName;
  /// Identifier. Id of the space. This field is used as the resource name, and must follow AIP-122 guidelines.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee Space, in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// Space ID of the Apigee Space.
  final pulumi.Input<String>? spaceId;
  /// Last modified timestamp of the space.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SpaceState].
  /// [createTime] Create timestamp of the space.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the Space.
  /// [name] Identifier. Id of the space. This field is used as the resource name, and must follow AIP-122 guidelines.
  /// [orgId] The Apigee Organization associated with the Apigee Space, in the format `organizations/{{org_name}}`.
  /// [spaceId] Space ID of the Apigee Space.
  /// [updateTime] Last modified timestamp of the space.
  const SpaceState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.name,
    this.orgId,
    this.spaceId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'orgId': ?orgId,
      'spaceId': ?spaceId,
      'updateTime': ?updateTime,
    };
  }

  factory SpaceState.fromMap(Map<String, dynamic> map) {
    return SpaceState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: (() { final guardedValue = map['spaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
