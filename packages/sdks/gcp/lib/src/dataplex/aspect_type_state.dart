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
    pulumi.Output<String>? aspectTypeId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataClassification,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? metadataTemplate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? transferStatus,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      aspectTypeId = pulumi.Input.asOptionalInput<String>(aspectTypeId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataClassification = pulumi.Input.asOptionalInput<String>(dataClassification),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadataTemplate = pulumi.Input.asOptionalInput<String>(metadataTemplate),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      transferStatus = pulumi.Input.asOptionalInput<String>(transferStatus),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      aspectTypeId: map['aspectTypeId'] == null ? null : pulumi.Output.create<String>(map['aspectTypeId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataClassification: map['dataClassification'] == null ? null : pulumi.Output.create<String>(map['dataClassification'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadataTemplate: map['metadataTemplate'] == null ? null : pulumi.Output.create<String>(map['metadataTemplate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      transferStatus: map['transferStatus'] == null ? null : pulumi.Output.create<String>(map['transferStatus'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

