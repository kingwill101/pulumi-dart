// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestor_attestation_authority_note.dart';

/// Input properties used for looking up and filtering Attestor resources.
class AttestorState {
  /// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
  /// Structure is documented below.
  final pulumi.Input<AttestorAttestationAuthorityNote?>? attestationAuthorityNote;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A descriptive comment. This field may be updated. The field may be
  /// displayed in chooser dialogs.
  final pulumi.Input<String?>? description;
  /// The resource name.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [AttestorState].
  /// [attestationAuthorityNote] A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A descriptive comment. This field may be updated. The field may be
  /// [name] The resource name.
  /// [project] The ID of the project in which the resource belongs.
  const AttestorState({
    this.attestationAuthorityNote,
    this.deletionPolicy,
    this.description,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthorityNote': ?pulumi.Input.mapOptionalInputValue<AttestorAttestationAuthorityNote, Map<String, dynamic>>(attestationAuthorityNote, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AttestorState.fromMap(Map<String, dynamic> map) {
    return AttestorState(
      attestationAuthorityNote: (() { final guardedValue = map['attestationAuthorityNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttestorAttestationAuthorityNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
