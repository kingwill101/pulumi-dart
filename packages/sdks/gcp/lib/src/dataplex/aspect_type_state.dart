// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AspectType resources.
class AspectTypeState {
  /// The aspect type id of the aspect type.
  final pulumi.Input<String?>? aspectTypeId;
  /// The time when the AspectType was created.
  final pulumi.Input<String?>? createTime;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// User-defined labels for the AspectType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location where aspect type will be created in.
  final pulumi.Input<String?>? location;
  /// MetadataTemplate of the Aspect.
  final pulumi.Input<String?>? metadataTemplate;
  /// The relative resource name of the AspectType, of the form: projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_type_id}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Denotes the transfer status of the Aspect Type. It is unspecified
  /// for Aspect Type created from Dataplex API.
  final pulumi.Input<String?>? transferStatus;
  /// System generated globally unique ID for the AspectType. This ID will be different if the AspectType is deleted and re-created with the same name.
  final pulumi.Input<String?>? uid;
  /// The time when the AspectType was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AspectTypeState].
  /// [aspectTypeId] The aspect type id of the aspect type.
  /// [createTime] The time when the AspectType was created.
  /// [dataClassification] Classifies the data stored by the aspect.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const AspectTypeState({
    this.aspectTypeId,
    this.createTime,
    this.dataClassification,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      aspectTypeId: (() { final guardedValue = map['aspectTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataClassification: (() { final guardedValue = map['dataClassification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataTemplate: (() { final guardedValue = map['metadataTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transferStatus: (() { final guardedValue = map['transferStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
