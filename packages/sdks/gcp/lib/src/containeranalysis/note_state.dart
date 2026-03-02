// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'note_attestation_authority.dart';
import 'note_related_url.dart';

/// Input properties used for looking up and filtering Note resources.
class NoteState {
  /// Note kind that represents a logical attestation "role" or "authority".
  /// For example, an organization might have one AttestationAuthority for
  /// "QA" and one for "build". This Note is intended to act strictly as a
  /// grouping mechanism for the attached Occurrences (Attestations). This
  /// grouping mechanism also provides a security boundary, since IAM ACLs
  /// gate the ability for a principle to attach an Occurrence to a given
  /// Note. It also provides a single point of lookup to find all attached
  /// Attestation Occurrences, even if they don't all live in the same
  /// project.
  /// Structure is documented below.
  final pulumi.Input<NoteAttestationAuthority>? attestationAuthority;
  /// The time this note was created.
  final pulumi.Input<String>? createTime;
  /// Time of expiration for this note. Leave empty if note does not expire.
  final pulumi.Input<String>? expirationTime;
  /// The type of analysis this note describes
  final pulumi.Input<String>? kind;
  /// A detailed description of the note
  final pulumi.Input<String>? longDescription;
  /// The name of the note.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Names of other notes related to this note.
  final pulumi.Input<List<String>>? relatedNoteNames;
  /// URLs associated with this note and related metadata.
  /// Structure is documented below.
  final pulumi.Input<List<NoteRelatedUrl>>? relatedUrls;
  /// A one sentence description of the note.
  final pulumi.Input<String>? shortDescription;
  /// The time this note was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [NoteState].
  /// [attestationAuthority] Note kind that represents a logical attestation "role" or "authority".
  /// [createTime] The time this note was created.
  /// [expirationTime] Time of expiration for this note. Leave empty if note does not expire.
  /// [kind] The type of analysis this note describes
  /// [longDescription] A detailed description of the note
  /// [name] The name of the note.
  /// [project] The ID of the project in which the resource belongs.
  /// [relatedNoteNames] Names of other notes related to this note.
  /// [relatedUrls] URLs associated with this note and related metadata.
  /// [shortDescription] A one sentence description of the note.
  /// [updateTime] The time this note was last updated.
  NoteState({
    this.attestationAuthority,
    this.createTime,
    this.expirationTime,
    this.kind,
    this.longDescription,
    this.name,
    this.project,
    this.relatedNoteNames,
    this.relatedUrls,
    this.shortDescription,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority': ?pulumi.Input.mapOptionalInputValue<NoteAttestationAuthority, Map<String, dynamic>>(attestationAuthority, (value) => value.toMap()),
      'createTime': ?createTime,
      'expirationTime': ?expirationTime,
      'kind': ?kind,
      'longDescription': ?longDescription,
      'name': ?name,
      'project': ?project,
      'relatedNoteNames': ?relatedNoteNames,
      'relatedUrls': ?pulumi.Input.mapOptionalInputValue<List<NoteRelatedUrl>, List<Map<String, dynamic>>>(relatedUrls, (value) => pulumi.Input.encodeList<NoteRelatedUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shortDescription': ?shortDescription,
      'updateTime': ?updateTime,
    };
  }

  factory NoteState.fromMap(Map<String, dynamic> map) {
    return NoteState(
      attestationAuthority: map['attestationAuthority'] == null ? null : (NoteAttestationAuthority.fromMap((map['attestationAuthority'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      longDescription: map['longDescription'] == null ? null : (map['longDescription'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      relatedNoteNames: map['relatedNoteNames'] == null ? null : ((map['relatedNoteNames'] as List).cast<String>()).input(),
      relatedUrls: map['relatedUrls'] == null ? null : (pulumi.Input.decodeList<NoteRelatedUrl>(map['relatedUrls'], (value) => NoteRelatedUrl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shortDescription: map['shortDescription'] == null ? null : (map['shortDescription'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

