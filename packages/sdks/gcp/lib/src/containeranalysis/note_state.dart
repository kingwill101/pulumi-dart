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
    pulumi.Output<NoteAttestationAuthority>? attestationAuthority,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? expirationTime,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? longDescription,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? relatedNoteNames,
    pulumi.Output<List<NoteRelatedUrl>>? relatedUrls,
    pulumi.Output<String>? shortDescription,
    pulumi.Output<String>? updateTime,
  }) :
      attestationAuthority = pulumi.Input.asOptionalInput<NoteAttestationAuthority>(attestationAuthority),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      expirationTime = pulumi.Input.asOptionalInput<String>(expirationTime),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      longDescription = pulumi.Input.asOptionalInput<String>(longDescription),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      relatedNoteNames = pulumi.Input.asOptionalInput<List<String>>(relatedNoteNames),
      relatedUrls = pulumi.Input.asOptionalInput<List<NoteRelatedUrl>>(relatedUrls),
      shortDescription = pulumi.Input.asOptionalInput<String>(shortDescription),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      attestationAuthority: map['attestationAuthority'] == null ? null : pulumi.Output.create<NoteAttestationAuthority>(NoteAttestationAuthority.fromMap((map['attestationAuthority'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      expirationTime: map['expirationTime'] == null ? null : pulumi.Output.create<String>(map['expirationTime'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      longDescription: map['longDescription'] == null ? null : pulumi.Output.create<String>(map['longDescription'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      relatedNoteNames: map['relatedNoteNames'] == null ? null : pulumi.Output.create<List<String>>((map['relatedNoteNames'] as List).cast<String>()),
      relatedUrls: map['relatedUrls'] == null ? null : pulumi.Output.create<List<NoteRelatedUrl>>(pulumi.Input.decodeList<NoteRelatedUrl>(map['relatedUrls'], (value) => NoteRelatedUrl.fromMap((value as Map).cast<String, dynamic>()))),
      shortDescription: map['shortDescription'] == null ? null : pulumi.Output.create<String>(map['shortDescription'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

