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
  AttestorArgs({
    required pulumi.Output<String> attestorId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<UserOwnedGrafeasNote>? userOwnedGrafeasNote,
  }) :
      attestorId = pulumi.Input.asInput<String>(attestorId),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      userOwnedGrafeasNote = pulumi.Input.asOptionalInput<UserOwnedGrafeasNote>(userOwnedGrafeasNote);

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
      attestorId: pulumi.Output.create<String>(map['attestorId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      userOwnedGrafeasNote: map['userOwnedGrafeasNote'] == null ? null : pulumi.Output.create<UserOwnedGrafeasNote>(UserOwnedGrafeasNote.fromMap((map['userOwnedGrafeasNote'] as Map).cast<String, dynamic>())),
    );
  }
}

