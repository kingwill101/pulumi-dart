// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_developerconnect_git_repository_link_git_repository_link_args_doc}
/// The set of arguments for GitRepositoryLink.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_git_repository_link_git_repository_link_args_doc}
class GitRepositoryLinkArgs {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Required. Git Clone URI.
  final pulumi.Input<String> cloneUri;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String?>? etag;
  /// Required. The ID to use for the repository, which will become the final component of
  /// the repository's resource name. This ID should be unique in the connection.
  /// Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final pulumi.Input<String> gitRepositoryLinkId;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  final pulumi.Input<String> location;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  final pulumi.Input<String> parentConnection;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GitRepositoryLinkArgs].
  /// [annotations] Optional. Allows clients to store small amounts of arbitrary data.
  /// [cloneUri] Required. Git Clone URI.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] Optional. This checksum is computed by the server based on the value of other
  /// [gitRepositoryLinkId] Required. The ID to use for the repository, which will become the final component of
  /// [labels] Optional. Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  /// [parentConnection] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  /// [project] The ID of the project in which the resource belongs.
  const GitRepositoryLinkArgs({
    this.annotations,
    required this.cloneUri,
    this.deletionPolicy,
    this.etag,
    required this.gitRepositoryLinkId,
    this.labels,
    required this.location,
    required this.parentConnection,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'cloneUri': cloneUri,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'gitRepositoryLinkId': gitRepositoryLinkId,
      'labels': ?labels,
      'location': location,
      'parentConnection': parentConnection,
      'project': ?project,
    };
  }

  factory GitRepositoryLinkArgs.fromMap(Map<String, dynamic> map) {
    return GitRepositoryLinkArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cloneUri: pulumi.Input.fromValue(map['cloneUri'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitRepositoryLinkId: pulumi.Input.fromValue(map['gitRepositoryLinkId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parentConnection: pulumi.Input.fromValue(map['parentConnection'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
