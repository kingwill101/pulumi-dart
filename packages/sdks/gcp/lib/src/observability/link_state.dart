// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Link resources.
class LinkState {
  /// The bucket of the link.
  final pulumi.Input<String?>? bucket;
  /// Output only. Create timestamp.
  final pulumi.Input<String?>? createTime;
  /// The dataset of the link.
  final pulumi.Input<String?>? dataset;
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
  final pulumi.Input<String?>? linkId;
  /// The location of the link.
  final pulumi.Input<String?>? location;
  /// Identifier. Name of the link. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]/datasets/[DATASET_ID]/links/[LINK_ID]
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [LinkState].
  /// [bucket] The bucket of the link.
  /// [createTime] Output only. Create timestamp.
  /// [dataset] The dataset of the link.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the link.
  /// [displayName] User friendly display name.
  /// [linkId] The client-assigned identifier for the link.
  /// [location] The location of the link.
  /// [name] Identifier. Name of the link. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]/datasets/[DATASET_ID]/links/[LINK_ID]
  /// [project] The ID of the project in which the resource belongs.
  const LinkState({
    this.bucket,
    this.createTime,
    this.dataset,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.linkId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'dataset': ?dataset,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'linkId': ?linkId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory LinkState.fromMap(Map<String, dynamic> map) {
    return LinkState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkId: (() { final guardedValue = map['linkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
