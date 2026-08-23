// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_owned_grafeas_note.dart';

/// {@template pulumi_binaryauthorization_v1_attestor_args_doc}
/// The set of arguments for Attestor.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_attestor_args_doc}
class AttestorArgs {
  /// Required. The attestors ID.
  final pulumi.Input<String> attestorId;
  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  final pulumi.Input<String>? description;
  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  final pulumi.Input<String>? etag;
  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// This specifies how an attestation will be read, and how it will be used during policy enforcement.
  final pulumi.Input<UserOwnedGrafeasNote>? userOwnedGrafeasNote;

  /// Creates a new [AttestorArgs].
  /// [attestorId] Required. The attestors ID.
  /// [description] Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  /// [etag] Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  /// [name] The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  /// [project] Optional.
  /// [userOwnedGrafeasNote] This specifies how an attestation will be read, and how it will be used during policy enforcement.
  const AttestorArgs({
    required this.attestorId,
    this.description,
    this.etag,
    this.name,
    this.project,
    this.userOwnedGrafeasNote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestorId': attestorId,
      'description': ?description,
      'etag': ?etag,
      'name': ?name,
      'project': ?project,
      'userOwnedGrafeasNote': ?pulumi.Input.mapOptionalInputValue<UserOwnedGrafeasNote, Map<String, dynamic>>(userOwnedGrafeasNote, (value) => value.toMap()),
    };
  }

  factory AttestorArgs.fromMap(Map<String, dynamic> map) {
    return AttestorArgs(
      attestorId: pulumi.Input.fromValue(map['attestorId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userOwnedGrafeasNote: (() { final guardedValue = map['userOwnedGrafeasNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserOwnedGrafeasNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
