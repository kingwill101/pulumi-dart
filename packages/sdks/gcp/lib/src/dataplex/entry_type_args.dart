// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_required_aspect.dart';

/// {@template pulumi_dataplex_entry_type_entry_type_args_doc}
/// The set of arguments for EntryType.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_type_entry_type_args_doc}
class EntryTypeArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the EntryType.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// The entry type id of the entry type.
  final pulumi.Input<String>? entryTypeId;
  /// User-defined labels for the EntryType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const EntryTypeArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryTypeId: (() { final guardedValue = map['entryTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredAspects: (() { final guardedValue = map['requiredAspects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryTypeRequiredAspect>(guardedValue, (value) => EntryTypeRequiredAspect.fromMap((value as Map).cast<String, dynamic>()))); })(),
      system: (() { final guardedValue = map['system']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeAliases: (() { final guardedValue = map['typeAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
