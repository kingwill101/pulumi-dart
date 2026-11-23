// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_link_link_args_doc}
/// The set of arguments for Link.
/// {@endtemplate}
/// {@macro pulumi_observability_link_link_args_doc}
class LinkArgs {
  /// The bucket of the link.
  final pulumi.Input<String> bucket;
  /// The dataset of the link.
  final pulumi.Input<String> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the link.
  final pulumi.Input<String?>? description;
  /// User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// The client-assigned identifier for the link.
  final pulumi.Input<String> linkId;
  /// The location of the link.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [LinkArgs].
  /// [bucket] The bucket of the link.
  /// [dataset] The dataset of the link.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the link.
  /// [displayName] User friendly display name.
  /// [linkId] The client-assigned identifier for the link.
  /// [location] The location of the link.
  /// [project] The ID of the project in which the resource belongs.
  const LinkArgs({
    required this.bucket,
    required this.dataset,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.linkId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'dataset': dataset,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'linkId': linkId,
      'location': location,
      'project': ?project,
    };
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkId: pulumi.Input.fromValue(map['linkId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
