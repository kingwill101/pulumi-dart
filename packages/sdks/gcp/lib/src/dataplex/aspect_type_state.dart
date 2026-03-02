// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AspectType resources.
class AspectTypeState {
  /// The aspect type id of the aspect type.
  final pulumi.Input<String>? aspectTypeId;
  /// The time when the AspectType was created.
  final pulumi.Input<String>? createTime;
  /// Classifies the data stored by the aspect.
  /// `DATA_CLASSIFICATION_UNSPECIFIED` denotes that the aspect contains only metadata
  /// while `METADATA_AND_DATA` indicates data derived content.
  /// <br><br>
  /// Possible values are: `DATA_CLASSIFICATION_UNSPECIFIED`, `METADATA_AND_DATA`.
  final pulumi.Input<String>? dataClassification;
  /// Description of the AspectType.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// User-defined labels for the AspectType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where aspect type will be created in.
  final pulumi.Input<String>? location;
  /// MetadataTemplate of the Aspect.
  final pulumi.Input<String>? metadataTemplate;
  /// The relative resource name of the AspectType, of the form: projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_type_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Denotes the transfer status of the Aspect Type. It is unspecified
  /// for Aspect Type created from Dataplex API.
  final pulumi.Input<String>? transferStatus;
  /// System generated globally unique ID for the AspectType. This ID will be different if the AspectType is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// The time when the AspectType was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AspectTypeState].
  /// [aspectTypeId] The aspect type id of the aspect type.
  /// [createTime] The time when the AspectType was created.
  /// [dataClassification] Classifies the data stored by the aspect.
  /// [description] Description of the AspectType.
  /// [displayName] User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] User-defined labels for the AspectType.
  /// [location] The location where aspect type will be created in.
  /// [metadataTemplate] MetadataTemplate of the Aspect.
  /// [name] The relative resource name of the AspectType, of the form: projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_type_id}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [transferStatus] Denotes the transfer status of the Aspect Type. It is unspecified
  /// [uid] System generated globally unique ID for the AspectType. This ID will be different if the AspectType is deleted and re-created with the same name.
  /// [updateTime] The time when the AspectType was last updated.
  AspectTypeState({
    this.aspectTypeId,
    this.createTime,
    this.dataClassification,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.metadataTemplate,
    this.name,
    this.project,
    this.pulumiLabels,
    this.transferStatus,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectTypeId': ?aspectTypeId,
      'createTime': ?createTime,
      'dataClassification': ?dataClassification,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'metadataTemplate': ?metadataTemplate,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'transferStatus': ?transferStatus,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory AspectTypeState.fromMap(Map<String, dynamic> map) {
    return AspectTypeState(
      aspectTypeId: map['aspectTypeId'] == null ? null : (map['aspectTypeId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataClassification: map['dataClassification'] == null ? null : (map['dataClassification'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metadataTemplate: map['metadataTemplate'] == null ? null : (map['metadataTemplate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      transferStatus: map['transferStatus'] == null ? null : (map['transferStatus'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

