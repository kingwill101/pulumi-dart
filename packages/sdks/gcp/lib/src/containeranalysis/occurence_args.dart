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
  /// [noteName] The analysis note associated with this occurrence, in the form of
  /// [project] The ID of the project in which the resource belongs.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resourceUri] Required. Immutable. A URI that represents the resource for which
  const OccurenceArgs({
    required this.attestation,
    required this.noteName,
    this.project,
    this.remediation,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': pulumi.Input.mapInputValue<OccurenceAttestation, Map<String, dynamic>>(attestation, (value) => value.toMap()),
      'noteName': noteName,
      'project': ?project,
      'remediation': ?remediation,
      'resourceUri': resourceUri,
    };
  }

  factory OccurenceArgs.fromMap(Map<String, dynamic> map) {
    return OccurenceArgs(
      attestation: pulumi.Input.fromValue(OccurenceAttestation.fromMap((map['attestation']! as Map).cast<String, dynamic>())),
      noteName: pulumi.Input.fromValue(map['noteName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediation: (() { final guardedValue = map['remediation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

