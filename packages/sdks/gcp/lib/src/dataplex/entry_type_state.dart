// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_required_aspect.dart';

/// Input properties used for looking up and filtering EntryType resources.
class EntryTypeState {
  /// The time when the EntryType was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the EntryType.
  final pulumi.Input<String?>? description;
  /// User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The entry type id of the entry type.
  final pulumi.Input<String?>? entryTypeId;
  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location where entry type will be created in.
  final pulumi.Input<String?>? location;
  /// The relative resource name of the EntryType, of the form: projects/{project_number}/locations/{location_id}/entryTypes/{entry_type_id}
  final pulumi.Input<String?>? name;
  /// The platform that Entries of this type belongs to.
  final pulumi.Input<String?>? platform;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// AspectInfo for the entry type.
  /// Structure is documented below.
  final pulumi.Input<List<EntryTypeRequiredAspect>?>? requiredAspects;
  /// The system that Entries of this type belongs to.
  final pulumi.Input<String?>? system;
  /// Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  final pulumi.Input<List<String>?>? typeAliases;
  /// System generated globally unique ID for the EntryType. This ID will be different if the EntryType is deleted and re-created with the same name.
  final pulumi.Input<String?>? uid;
  /// The time when the EntryType was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [EntryTypeState].
  /// [createTime] The time when the EntryType was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the EntryType.
  /// [displayName] User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entryTypeId] The entry type id of the entry type.
  /// [labels] User-defined labels for the EntryType.
  /// [location] The location where entry type will be created in.
  /// [name] The relative resource name of the EntryType, of the form: projects/{project_number}/locations/{location_id}/entryTypes/{entry_type_id}
  /// [platform] The platform that Entries of this type belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [requiredAspects] AspectInfo for the entry type.
  /// [system] The system that Entries of this type belongs to.
  /// [typeAliases] Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  /// [uid] System generated globally unique ID for the EntryType. This ID will be different if the EntryType is deleted and re-created with the same name.
  /// [updateTime] The time when the EntryType was last updated.
  const EntryTypeState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.entryTypeId,
    this.labels,
    this.location,
    this.name,
    this.platform,
    this.project,
    this.pulumiLabels,
    this.requiredAspects,
    this.system,
    this.typeAliases,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entryTypeId': ?entryTypeId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'platform': ?platform,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'requiredAspects': ?pulumi.Input.mapOptionalInputValue<List<EntryTypeRequiredAspect>, List<Map<String, dynamic>>>(requiredAspects, (value) => pulumi.Input.encodeList<EntryTypeRequiredAspect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'system': ?system,
      'typeAliases': ?typeAliases,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory EntryTypeState.fromMap(Map<String, dynamic> map) {
    return EntryTypeState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entryTypeId: (() { final guardedValue = map['entryTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requiredAspects: (() { final guardedValue = map['requiredAspects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryTypeRequiredAspect>(guardedValue, (value) => EntryTypeRequiredAspect.fromMap((value as Map).cast<String, dynamic>()))); })(),
      system: (() { final guardedValue = map['system']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeAliases: (() { final guardedValue = map['typeAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
