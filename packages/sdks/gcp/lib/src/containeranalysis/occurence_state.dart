// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'occurence_attestation.dart';

/// Input properties used for looking up and filtering Occurence resources.
class OccurenceState {
  /// Occurrence that represents a single "attestation". The authenticity
  /// of an attestation can be verified using the attached signature.
  /// If the verifier trusts the public key of the signer, then verifying
  /// the signature is sufficient to establish trust. In this circumstance,
  /// the authority to which this attestation is attached is primarily
  /// useful for lookup (how to find this attestation if you already
  /// know the authority and artifact to be verified) and intent (for
  /// which authority this attestation was intended to sign.
  /// Structure is documented below.
  final pulumi.Input<OccurenceAttestation>? attestation;
  /// The time when the repository was created.
  final pulumi.Input<String>? createTime;
  /// The note kind which explicitly denotes which of the occurrence
  /// details are specified. This field can be used as a filter in list
  /// requests.
  final pulumi.Input<String>? kind;
  /// The name of the occurrence.
  final pulumi.Input<String>? name;
  /// The analysis note associated with this occurrence, in the form of
  /// projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
  /// filter in list requests.
  final pulumi.Input<String>? noteName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A description of actions that can be taken to remedy the note.
  final pulumi.Input<String>? remediation;
  /// Required. Immutable. A URI that represents the resource for which
  /// the occurrence applies. For example,
  /// https://gcr.io/project/image@sha256:123abc for a Docker image.
  final pulumi.Input<String>? resourceUri;
  /// The time when the repository was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [OccurenceState].
  /// [attestation] Occurrence that represents a single "attestation". The authenticity
  /// [createTime] The time when the repository was created.
  /// [kind] The note kind which explicitly denotes which of the occurrence
  /// [name] The name of the occurrence.
  /// [noteName] The analysis note associated with this occurrence, in the form of
  /// [project] The ID of the project in which the resource belongs.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resourceUri] Required. Immutable. A URI that represents the resource for which
  /// [updateTime] The time when the repository was last updated.
  const OccurenceState({
    this.attestation,
    this.createTime,
    this.kind,
    this.name,
    this.noteName,
    this.project,
    this.remediation,
    this.resourceUri,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?pulumi.Input.mapOptionalInputValue<OccurenceAttestation, Map<String, dynamic>>(attestation, (value) => value.toMap()),
      'createTime': ?createTime,
      'kind': ?kind,
      'name': ?name,
      'noteName': ?noteName,
      'project': ?project,
      'remediation': ?remediation,
      'resourceUri': ?resourceUri,
      'updateTime': ?updateTime,
    };
  }

  factory OccurenceState.fromMap(Map<String, dynamic> map) {
    return OccurenceState(
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OccurenceAttestation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noteName: (() { final guardedValue = map['noteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediation: (() { final guardedValue = map['remediation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: (() { final guardedValue = map['resourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

