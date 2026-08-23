// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'occurence_attestation.dart';

/// {@template pulumi_containeranalysis_occurence_occurence_args_doc}
/// The set of arguments for Occurence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_occurence_occurence_args_doc}
class OccurenceArgs {
  /// Occurrence that represents a single "attestation". The authenticity
  /// of an attestation can be verified using the attached signature.
  /// If the verifier trusts the public key of the signer, then verifying
  /// the signature is sufficient to establish trust. In this circumstance,
  /// the authority to which this attestation is attached is primarily
  /// useful for lookup (how to find this attestation if you already
  /// know the authority and artifact to be verified) and intent (for
  /// which authority this attestation was intended to sign.
  /// Structure is documented below.
  final pulumi.Input<OccurenceAttestation> attestation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The analysis note associated with this occurrence, in the form of
  /// projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
  /// filter in list requests.
  final pulumi.Input<String> noteName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A description of actions that can be taken to remedy the note.
  final pulumi.Input<String>? remediation;
  /// Required. Immutable. A URI that represents the resource for which
  /// the occurrence applies. For example,
  /// https://gcr.io/project/image@sha256:123abc for a Docker image.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [OccurenceArgs].
  /// [attestation] Occurrence that represents a single "attestation". The authenticity
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [noteName] The analysis note associated with this occurrence, in the form of
  /// [project] The ID of the project in which the resource belongs.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resourceUri] Required. Immutable. A URI that represents the resource for which
  const OccurenceArgs({
    required this.attestation,
    this.deletionPolicy,
    required this.noteName,
    this.project,
    this.remediation,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': pulumi.Input.mapInputValue<OccurenceAttestation, Map<String, dynamic>>(attestation, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'noteName': noteName,
      'project': ?project,
      'remediation': ?remediation,
      'resourceUri': resourceUri,
    };
  }

  factory OccurenceArgs.fromMap(Map<String, dynamic> map) {
    return OccurenceArgs(
      attestation: pulumi.Input.fromValue(OccurenceAttestation.fromMap((map['attestation']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noteName: pulumi.Input.fromValue(map['noteName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediation: (() { final guardedValue = map['remediation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
