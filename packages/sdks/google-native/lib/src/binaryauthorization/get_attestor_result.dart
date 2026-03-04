// ignore_for_file: unused_element, unnecessary_cast

import 'user_owned_grafeas_note_response.dart';

/// Result data returned by getAttestor.
class GetAttestorResult {
  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  final String description;

  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  final String etag;

  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  final String name;

  /// Time when the attestor was last updated.
  final String updateTime;

  /// This specifies how an attestation will be read, and how it will be used during policy enforcement.
  final UserOwnedGrafeasNoteResponse userOwnedGrafeasNote;

  /// Creates a new [GetAttestorResult].
  /// [description] Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  /// [etag] Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  /// [name] The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  /// [updateTime] Time when the attestor was last updated.
  /// [userOwnedGrafeasNote] This specifies how an attestation will be read, and how it will be used during policy enforcement.
  GetAttestorResult({
    required this.description,
    required this.etag,
    required this.name,
    required this.updateTime,
    required this.userOwnedGrafeasNote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'etag': etag,
      'name': name,
      'updateTime': updateTime,
      'userOwnedGrafeasNote': userOwnedGrafeasNote.toMap(),
    };
  }

  factory GetAttestorResult.fromMap(Map<String, dynamic> map) {
    return GetAttestorResult(
      description: map['description'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      userOwnedGrafeasNote: UserOwnedGrafeasNoteResponse.fromMap(
        (map['userOwnedGrafeasNote']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
