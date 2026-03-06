// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cis_benchmark.dart';
import 'compliance_version.dart';

class ComplianceNote {
  final pulumi.Input<CisBenchmark>? cisBenchmark;
  /// A description about this compliance check.
  final pulumi.Input<String>? description;
  /// A rationale for the existence of this compliance check.
  final pulumi.Input<String>? rationale;
  /// A description of remediation steps if the compliance check fails.
  final pulumi.Input<String>? remediation;
  /// Serialized scan instructions with a predefined format.
  final pulumi.Input<String>? scanInstructions;
  /// The title that identifies this compliance check.
  final pulumi.Input<String>? title;
  /// The OS and config versions the benchmark applies to.
  final pulumi.Input<List<ComplianceVersion>>? version;

  /// Creates a new [ComplianceNote].
  /// [cisBenchmark] Optional.
  /// [description] A description about this compliance check.
  /// [rationale] A rationale for the existence of this compliance check.
  /// [remediation] A description of remediation steps if the compliance check fails.
  /// [scanInstructions] Serialized scan instructions with a predefined format.
  /// [title] The title that identifies this compliance check.
  /// [version] The OS and config versions the benchmark applies to.
  const ComplianceNote({
    this.cisBenchmark,
    this.description,
    this.rationale,
    this.remediation,
    this.scanInstructions,
    this.title,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cisBenchmark': ?pulumi.Input.mapOptionalInputValue<CisBenchmark, Map<String, dynamic>>(cisBenchmark, (value) => value.toMap()),
      'description': ?description,
      'rationale': ?rationale,
      'remediation': ?remediation,
      'scanInstructions': ?scanInstructions,
      'title': ?title,
      'version': ?pulumi.Input.mapOptionalInputValue<List<ComplianceVersion>, List<Map<String, dynamic>>>(version, (value) => pulumi.Input.encodeList<ComplianceVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ComplianceNote.fromMap(Map<String, dynamic> map) {
    return ComplianceNote(
      cisBenchmark: (() { final guardedValue = map['cisBenchmark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CisBenchmark.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rationale: (() { final guardedValue = map['rationale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediation: (() { final guardedValue = map['remediation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanInstructions: (() { final guardedValue = map['scanInstructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ComplianceVersion>(guardedValue, (value) => ComplianceVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

