// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_required_aspect.dart';

/// Input properties used for looking up and filtering EntryType resources.
class EntryTypeState {
  /// The time when the EntryType was created.
  final pulumi.Input<String>? createTime;
  /// Description of the EntryType.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The entry type id of the entry type.
  final pulumi.Input<String>? entryTypeId;
  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where entry type will be created in.
  final pulumi.Input<String>? location;
  /// The relative resource name of the EntryType, of the form: projects/{project_number}/locations/{location_id}/entryTypes/{entry_type_id}
  final pulumi.Input<String>? name;
  /// The platform that Entries of this type belongs to.
  final pulumi.Input<String>? platform;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// AspectInfo for the entry type.
  /// Structure is documented below.
  final pulumi.Input<List<EntryTypeRequiredAspect>>? requiredAspects;
  /// The system that Entries of this type belongs to.
  final pulumi.Input<String>? system;
  /// Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  final pulumi.Input<List<String>>? typeAliases;
  /// System generated globally unique ID for the EntryType. This ID will be different if the EntryType is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// The time when the EntryType was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EntryTypeState].
  /// [createTime] The time when the EntryType was created.
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
  EntryTypeState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entryTypeId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<EntryTypeRequiredAspect>>? requiredAspects,
    pulumi.Output<String>? system,
    pulumi.Output<List<String>>? typeAliases,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entryTypeId = pulumi.Input.asOptionalInput<String>(entryTypeId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      requiredAspects = pulumi.Input.asOptionalInput<List<EntryTypeRequiredAspect>>(requiredAspects),
      system = pulumi.Input.asOptionalInput<String>(system),
      typeAliases = pulumi.Input.asOptionalInput<List<String>>(typeAliases),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entryTypeId: map['entryTypeId'] == null ? null : pulumi.Output.create<String>(map['entryTypeId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      requiredAspects: map['requiredAspects'] == null ? null : pulumi.Output.create<List<EntryTypeRequiredAspect>>(pulumi.Input.decodeList<EntryTypeRequiredAspect>(map['requiredAspects'], (value) => EntryTypeRequiredAspect.fromMap((value as Map).cast<String, dynamic>()))),
      system: map['system'] == null ? null : pulumi.Output.create<String>(map['system'] as String),
      typeAliases: map['typeAliases'] == null ? null : pulumi.Output.create<List<String>>((map['typeAliases'] as List).cast<String>()),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

