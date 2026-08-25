// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_aspect_type_aspect_type_args_doc}
/// The set of arguments for AspectType.
/// {@endtemplate}
/// {@macro pulumi_dataplex_aspect_type_aspect_type_args_doc}
class AspectTypeArgs {
  /// The aspect type id of the aspect type.
  final pulumi.Input<String?>? aspectTypeId;
  /// Classifies the data stored by the aspect.
  /// `DATA_CLASSIFICATION_UNSPECIFIED` denotes that the aspect contains only metadata
  /// while `METADATA_AND_DATA` indicates data derived content.
  /// &lt;br&gt;&lt;br&gt;
  /// Possible values are: `DATA_CLASSIFICATION_UNSPECIFIED`, `METADATA_AND_DATA`.
  final pulumi.Input<String?>? dataClassification;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the AspectType.
  final pulumi.Input<String?>? description;
  /// User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// User-defined labels for the AspectType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location where aspect type will be created in.
  final pulumi.Input<String?>? location;
  /// MetadataTemplate of the Aspect.
  final pulumi.Input<String?>? metadataTemplate;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [AspectTypeArgs].
  /// [aspectTypeId] The aspect type id of the aspect type.
  /// [dataClassification] Classifies the data stored by the aspect.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the AspectType.
  /// [displayName] User friendly display name.
  /// [labels] User-defined labels for the AspectType.
  /// [location] The location where aspect type will be created in.
  /// [metadataTemplate] MetadataTemplate of the Aspect.
  /// [project] The ID of the project in which the resource belongs.
  const AspectTypeArgs({
    this.aspectTypeId,
    this.dataClassification,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    this.metadataTemplate,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectTypeId': ?aspectTypeId,
      'dataClassification': ?dataClassification,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'metadataTemplate': ?metadataTemplate,
      'project': ?project,
    };
  }

  factory AspectTypeArgs.fromMap(Map<String, dynamic> map) {
    return AspectTypeArgs(
      aspectTypeId: (() { final guardedValue = map['aspectTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataClassification: (() { final guardedValue = map['dataClassification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataTemplate: (() { final guardedValue = map['metadataTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
