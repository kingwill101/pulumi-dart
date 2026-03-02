// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_required_aspect.dart';

/// {@template pulumi_dataplex_entry_type_entry_type_args_doc}
/// The set of arguments for EntryType.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_type_entry_type_args_doc}
class EntryTypeArgs {
  /// Description of the EntryType.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// The entry type id of the entry type.
  final pulumi.Input<String>? entryTypeId;
  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where entry type will be created in.
  final pulumi.Input<String>? location;
  /// The platform that Entries of this type belongs to.
  final pulumi.Input<String>? platform;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// AspectInfo for the entry type.
  /// Structure is documented below.
  final pulumi.Input<List<EntryTypeRequiredAspect>>? requiredAspects;
  /// The system that Entries of this type belongs to.
  final pulumi.Input<String>? system;
  /// Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  final pulumi.Input<List<String>>? typeAliases;

  /// Creates a new [EntryTypeArgs].
  /// [description] Description of the EntryType.
  /// [displayName] User friendly display name.
  /// [entryTypeId] The entry type id of the entry type.
  /// [labels] User-defined labels for the EntryType.
  /// [location] The location where entry type will be created in.
  /// [platform] The platform that Entries of this type belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [requiredAspects] AspectInfo for the entry type.
  /// [system] The system that Entries of this type belongs to.
  /// [typeAliases] Indicates the class this Entry Type belongs to, for example, TABLE, DATABASE, MODEL.
  EntryTypeArgs({
    this.description,
    this.displayName,
    this.entryTypeId,
    this.labels,
    this.location,
    this.platform,
    this.project,
    this.requiredAspects,
    this.system,
    this.typeAliases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'entryTypeId': ?entryTypeId,
      'labels': ?labels,
      'location': ?location,
      'platform': ?platform,
      'project': ?project,
      'requiredAspects': ?pulumi.Input.mapOptionalInputValue<List<EntryTypeRequiredAspect>, List<Map<String, dynamic>>>(requiredAspects, (value) => pulumi.Input.encodeList<EntryTypeRequiredAspect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'system': ?system,
      'typeAliases': ?typeAliases,
    };
  }

  factory EntryTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntryTypeArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entryTypeId: map['entryTypeId'] == null ? null : (map['entryTypeId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      platform: map['platform'] == null ? null : (map['platform']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requiredAspects: map['requiredAspects'] == null ? null : (pulumi.Input.decodeList<EntryTypeRequiredAspect>(map['requiredAspects']!, (value) => EntryTypeRequiredAspect.fromMap((value as Map).cast<String, dynamic>()))).input(),
      system: map['system'] == null ? null : (map['system']! as String).input(),
      typeAliases: map['typeAliases'] == null ? null : ((map['typeAliases']! as List).cast<String>()).input(),
    );
  }
}

