// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_space_space_args_doc}
/// The set of arguments for Space.
/// {@endtemplate}
/// {@macro pulumi_apigee_space_space_args_doc}
class SpaceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the Space.
  final pulumi.Input<String> displayName;
  /// The Apigee Organization associated with the Apigee Space, in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// Space ID of the Apigee Space.
  final pulumi.Input<String> spaceId;

  /// Creates a new [SpaceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the Space.
  /// [orgId] The Apigee Organization associated with the Apigee Space, in the format `organizations/{{org_name}}`.
  /// [spaceId] Space ID of the Apigee Space.
  const SpaceArgs({
    this.deletionPolicy,
    required this.displayName,
    required this.orgId,
    required this.spaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'orgId': orgId,
      'spaceId': spaceId,
    };
  }

  factory SpaceArgs.fromMap(Map<String, dynamic> map) {
    return SpaceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      spaceId: pulumi.Input.fromValue(map['spaceId'] as String),
    );
  }
}
