// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'note_attestation_authority.dart';
import 'note_related_url.dart';

/// {@template pulumi_containeranalysis_note_note_args_doc}
/// The set of arguments for Note.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_note_note_args_doc}
class NoteArgs {
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
  final pulumi.Input<NoteAttestationAuthority> attestationAuthority;

  /// Time of expiration for this note. Leave empty if note does not expire.
  final pulumi.Input<String>? expirationTime;

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

  /// Creates a new [NoteArgs].
  /// [attestationAuthority] Note kind that represents a logical attestation "role" or "authority".
  /// [expirationTime] Time of expiration for this note. Leave empty if note does not expire.
  /// [longDescription] A detailed description of the note
  /// [name] The name of the note.
  /// [project] The ID of the project in which the resource belongs.
  /// [relatedNoteNames] Names of other notes related to this note.
  /// [relatedUrls] URLs associated with this note and related metadata.
  /// [shortDescription] A one sentence description of the note.
  NoteArgs({
    required this.attestationAuthority,
    this.expirationTime,
    this.longDescription,
    this.name,
    this.project,
    this.relatedNoteNames,
    this.relatedUrls,
    this.shortDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority':
          pulumi.Input.mapInputValue<
            NoteAttestationAuthority,
            Map<String, dynamic>
          >(attestationAuthority, (value) => value.toMap()),
      'expirationTime': ?expirationTime,
      'longDescription': ?longDescription,
      'name': ?name,
      'project': ?project,
      'relatedNoteNames': ?relatedNoteNames,
      'relatedUrls':
          ?pulumi.Input.mapOptionalInputValue<
            List<NoteRelatedUrl>,
            List<Map<String, dynamic>>
          >(
            relatedUrls,
            (value) =>
                pulumi.Input.encodeList<NoteRelatedUrl, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'shortDescription': ?shortDescription,
    };
  }

  factory NoteArgs.fromMap(Map<String, dynamic> map) {
    return NoteArgs(
      attestationAuthority: pulumi.Input.fromValue(
        NoteAttestationAuthority.fromMap(
          (map['attestationAuthority']! as Map).cast<String, dynamic>(),
        ),
      ),
      expirationTime: (() {
        final guardedValue = map['expirationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      longDescription: (() {
        final guardedValue = map['longDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      relatedNoteNames: (() {
        final guardedValue = map['relatedNoteNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      relatedUrls: (() {
        final guardedValue = map['relatedUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NoteRelatedUrl>(
            guardedValue,
            (value) =>
                NoteRelatedUrl.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      shortDescription: (() {
        final guardedValue = map['shortDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
