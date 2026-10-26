// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_occurrence_response.dart';
import 'build_occurrence_response.dart';
import 'compliance_occurrence_response.dart';
import 'deployment_occurrence_response.dart';
import 'discovery_occurrence_response.dart';
import 'dsseattestation_occurrence_response.dart';
import 'envelope_response.dart';
import 'image_occurrence_response.dart';
import 'package_occurrence_response.dart';
import 'sbomreference_occurrence_response.dart';
import 'upgrade_occurrence_response.dart';
import 'vulnerability_occurrence_response.dart';

/// Result data returned by getOccurrence.
class GetOccurrenceResult {
  /// Describes an attestation of an artifact.
  final AttestationOccurrenceResponse? attestation;
  /// Describes a verifiable build.
  final BuildOccurrenceResponse? build;
  /// Describes a compliance violation on a linked resource.
  final ComplianceOccurrenceResponse? compliance;
  /// The time this occurrence was created.
  final String? createTime;
  /// Describes the deployment of an artifact on a runtime.
  final DeploymentOccurrenceResponse? deployment;
  /// Describes when a resource was discovered.
  final DiscoveryOccurrenceResponse? discovery;
  /// Describes an attestation of an artifact using dsse.
  final DSSEAttestationOccurrenceResponse? dsseAttestation;
  /// https://github.com/secure-systems-lab/dsse
  final EnvelopeResponse? envelope;
  /// Describes how this resource derives from the basis in the associated note.
  final ImageOccurrenceResponse? image;
  /// This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  final String? kind;
  /// The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  final String? name;
  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final String? noteName;
  /// Describes the installation of a package on the linked resource.
  final PackageOccurrenceResponse? package;
  /// A description of actions that can be taken to remedy the note.
  final String? remediation;
  /// Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  final String? resourceUri;
  /// Describes a specific SBOM reference occurrences.
  final SBOMReferenceOccurrenceResponse? sbomReference;
  /// The time this occurrence was last updated.
  final String? updateTime;
  /// Describes an available package upgrade on the linked resource.
  final UpgradeOccurrenceResponse? upgrade;
  /// Describes a security vulnerability.
  final VulnerabilityOccurrenceResponse? vulnerability;

  /// Creates a new [GetOccurrenceResult].
  /// [attestation] Describes an attestation of an artifact.
  /// [build] Describes a verifiable build.
  /// [compliance] Describes a compliance violation on a linked resource.
  /// [createTime] The time this occurrence was created.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [discovery] Describes when a resource was discovered.
  /// [dsseAttestation] Describes an attestation of an artifact using dsse.
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [image] Describes how this resource derives from the basis in the associated note.
  /// [kind] This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  /// [name] The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// [noteName] Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  /// [package] Describes the installation of a package on the linked resource.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resourceUri] Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  /// [sbomReference] Describes a specific SBOM reference occurrences.
  /// [updateTime] The time this occurrence was last updated.
  /// [upgrade] Describes an available package upgrade on the linked resource.
  /// [vulnerability] Describes a security vulnerability.
  const GetOccurrenceResult({
    this.attestation,
    this.build,
    this.compliance,
    this.createTime,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.envelope,
    this.image,
    this.kind,
    this.name,
    this.noteName,
    this.package,
    this.remediation,
    this.resourceUri,
    this.sbomReference,
    this.updateTime,
    this.upgrade,
    this.vulnerability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?attestation?.toMap(),
      'build': ?build?.toMap(),
      'compliance': ?compliance?.toMap(),
      'createTime': ?createTime,
      'deployment': ?deployment?.toMap(),
      'discovery': ?discovery?.toMap(),
      'dsseAttestation': ?dsseAttestation?.toMap(),
      'envelope': ?envelope?.toMap(),
      'image': ?image?.toMap(),
      'kind': ?kind,
      'name': ?name,
      'noteName': ?noteName,
      'package': ?package?.toMap(),
      'remediation': ?remediation,
      'resourceUri': ?resourceUri,
      'sbomReference': ?sbomReference?.toMap(),
      'updateTime': ?updateTime,
      'upgrade': ?upgrade?.toMap(),
      'vulnerability': ?vulnerability?.toMap(),
    };
  }

  factory GetOccurrenceResult.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceResult(
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return AttestationOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return BuildOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return ComplianceOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return DeploymentOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return DiscoveryOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dsseAttestation: (() { final guardedValue = map['dsseAttestation']; if (guardedValue == null) return null; return DSSEAttestationOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      envelope: (() { final guardedValue = map['envelope']; if (guardedValue == null) return null; return EnvelopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return ImageOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noteName: (() { final guardedValue = map['noteName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return PackageOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      remediation: (() { final guardedValue = map['remediation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceUri: (() { final guardedValue = map['resourceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return SBOMReferenceOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return UpgradeOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerability: (() { final guardedValue = map['vulnerability']; if (guardedValue == null) return null; return VulnerabilityOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
