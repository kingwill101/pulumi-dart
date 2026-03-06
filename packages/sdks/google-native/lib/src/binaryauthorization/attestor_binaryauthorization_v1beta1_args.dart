// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_owned_drydock_note.dart';

/// {@template pulumi_binaryauthorization_v1beta1_attestor_binaryauthorization_v1beta1_args_doc}
/// The set of arguments for Attestor.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1beta1_attestor_binaryauthorization_v1beta1_args_doc}
class AttestorBinaryauthorizationV1beta1Args {
  /// Required. The attestors ID.
  final pulumi.Input<String> attestorId;
  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  final pulumi.Input<String>? description;
  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  final pulumi.Input<String>? etag;
  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A Drydock ATTESTATION_AUTHORITY Note, created by the user.
  final pulumi.Input<UserOwnedDrydockNote>? userOwnedDrydockNote;

  /// Creates a new [AttestorBinaryauthorizationV1beta1Args].
  /// [attestorId] Required. The attestors ID.
  /// [description] Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  /// [etag] Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  /// [name] The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  /// [project] Optional.
  /// [userOwnedDrydockNote] A Drydock ATTESTATION_AUTHORITY Note, created by the user.
  const AttestorBinaryauthorizationV1beta1Args({
    required this.attestorId,
    this.description,
    this.etag,
    this.name,
    this.project,
    this.userOwnedDrydockNote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestorId': attestorId,
      'description': ?description,
      'etag': ?etag,
      'name': ?name,
      'project': ?project,
      'userOwnedDrydockNote': ?pulumi.Input.mapOptionalInputValue<UserOwnedDrydockNote, Map<String, dynamic>>(userOwnedDrydockNote, (value) => value.toMap()),
    };
  }

  factory AttestorBinaryauthorizationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return AttestorBinaryauthorizationV1beta1Args(
      attestorId: pulumi.Input.fromValue(map['attestorId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userOwnedDrydockNote: (() { final guardedValue = map['userOwnedDrydockNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserOwnedDrydockNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

