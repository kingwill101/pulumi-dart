// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_link_aspect.dart';
import 'entry_link_entry_reference.dart';

/// Input properties used for looking up and filtering EntryLink resources.
class EntryLinkState {
  /// The Aspects attached to the Entry Link.
  /// Structure is documented below.
  final pulumi.Input<List<EntryLinkAspect>>? aspects;
  /// The time when the Entry Link was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The id of the entry group this entry link is in.
  final pulumi.Input<String>? entryGroupId;
  /// The id of the entry link to create.
  final pulumi.Input<String>? entryLinkId;
  /// Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// projects/dataplex-types/locations/global/entryLinkTypes/definition
  final pulumi.Input<String>? entryLinkType;
  /// Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// Structure is documented below.
  final pulumi.Input<List<EntryLinkEntryReference>>? entryReferences;
  /// The location for the entry.
  final pulumi.Input<String>? location;
  /// The relative resource name of the Entry Link, of the form:
  /// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}/entryLinks/{entry_link_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The time when the Entry Link was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EntryLinkState].
  /// [aspects] The Aspects attached to the Entry Link.
  /// [createTime] The time when the Entry Link was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [entryGroupId] The id of the entry group this entry link is in.
  /// [entryLinkId] The id of the entry link to create.
  /// [entryLinkType] Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// [entryReferences] Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// [location] The location for the entry.
  /// [name] The relative resource name of the Entry Link, of the form:
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The time when the Entry Link was last updated.
  const EntryLinkState({
    this.aspects,
    this.createTime,
    this.deletionPolicy,
    this.entryGroupId,
    this.entryLinkId,
    this.entryLinkType,
    this.entryReferences,
    this.location,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspects': ?pulumi.Input.mapOptionalInputValue<List<EntryLinkAspect>, List<Map<String, dynamic>>>(aspects, (value) => pulumi.Input.encodeList<EntryLinkAspect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'entryGroupId': ?entryGroupId,
      'entryLinkId': ?entryLinkId,
      'entryLinkType': ?entryLinkType,
      'entryReferences': ?pulumi.Input.mapOptionalInputValue<List<EntryLinkEntryReference>, List<Map<String, dynamic>>>(entryReferences, (value) => pulumi.Input.encodeList<EntryLinkEntryReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory EntryLinkState.fromMap(Map<String, dynamic> map) {
    return EntryLinkState(
      aspects: (() { final guardedValue = map['aspects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryLinkAspect>(guardedValue, (value) => EntryLinkAspect.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryGroupId: (() { final guardedValue = map['entryGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryLinkId: (() { final guardedValue = map['entryLinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryLinkType: (() { final guardedValue = map['entryLinkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryReferences: (() { final guardedValue = map['entryReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryLinkEntryReference>(guardedValue, (value) => EntryLinkEntryReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
