// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestor_attestation_authority_note.dart';

/// {@template pulumi_binaryauthorization_attestor_attestor_args_doc}
/// The set of arguments for Attestor.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_attestor_attestor_args_doc}
class AttestorArgs {
  /// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
  /// Structure is documented below.
  final pulumi.Input<AttestorAttestationAuthorityNote> attestationAuthorityNote;
  /// A descriptive comment. This field may be updated. The field may be
  /// displayed in chooser dialogs.
  final pulumi.Input<String>? description;
  /// The resource name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AttestorArgs].
  /// [attestationAuthorityNote] A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
  /// [description] A descriptive comment. This field may be updated. The field may be
  /// [name] The resource name.
  /// [project] The ID of the project in which the resource belongs.
  AttestorArgs({
    required this.attestationAuthorityNote,
    this.description,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthorityNote': pulumi.Input.mapInputValue<AttestorAttestationAuthorityNote, Map<String, dynamic>>(attestationAuthorityNote, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AttestorArgs.fromMap(Map<String, dynamic> map) {
    return AttestorArgs(
      attestationAuthorityNote: (AttestorAttestationAuthorityNote.fromMap((map['attestationAuthorityNote'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

