// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_link_aspect.dart';
import 'entry_link_entry_reference.dart';

/// {@template pulumi_dataplex_entry_link_entry_link_args_doc}
/// The set of arguments for EntryLink.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_link_entry_link_args_doc}
class EntryLinkArgs {
  /// The Aspects attached to the Entry Link.
  /// Structure is documented below.
  final pulumi.Input<List<EntryLinkAspect>?>? aspects;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The id of the entry group this entry link is in.
  final pulumi.Input<String> entryGroupId;
  /// The id of the entry link to create.
  final pulumi.Input<String> entryLinkId;
  /// Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// projects/dataplex-types/locations/global/entryLinkTypes/definition
  final pulumi.Input<String> entryLinkType;
  /// Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// Structure is documented below.
  final pulumi.Input<List<EntryLinkEntryReference>> entryReferences;
  /// The location for the entry.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [EntryLinkArgs].
  /// [aspects] The Aspects attached to the Entry Link.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [entryGroupId] The id of the entry group this entry link is in.
  /// [entryLinkId] The id of the entry link to create.
  /// [entryLinkType] Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// [entryReferences] Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// [location] The location for the entry.
  /// [project] The ID of the project in which the resource belongs.
  const EntryLinkArgs({
    this.aspects,
    this.deletionPolicy,
    required this.entryGroupId,
    required this.entryLinkId,
    required this.entryLinkType,
    required this.entryReferences,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspects': ?pulumi.Input.mapOptionalInputValue<List<EntryLinkAspect>, List<Map<String, dynamic>>>(aspects, (value) => pulumi.Input.encodeList<EntryLinkAspect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'entryGroupId': entryGroupId,
      'entryLinkId': entryLinkId,
      'entryLinkType': entryLinkType,
      'entryReferences': pulumi.Input.mapInputValue<List<EntryLinkEntryReference>, List<Map<String, dynamic>>>(entryReferences, (value) => pulumi.Input.encodeList<EntryLinkEntryReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'project': ?project,
    };
  }

  factory EntryLinkArgs.fromMap(Map<String, dynamic> map) {
    return EntryLinkArgs(
      aspects: (() { final guardedValue = map['aspects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryLinkAspect>(guardedValue, (value) => EntryLinkAspect.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryGroupId: pulumi.Input.fromValue(map['entryGroupId'] as String),
      entryLinkId: pulumi.Input.fromValue(map['entryLinkId'] as String),
      entryLinkType: pulumi.Input.fromValue(map['entryLinkType'] as String),
      entryReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<EntryLinkEntryReference>(map['entryReferences']!, (value) => EntryLinkEntryReference.fromMap((value as Map).cast<String, dynamic>()))),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
