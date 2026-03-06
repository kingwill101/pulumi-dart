// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed.dart';
import 'discovery_occurrence_analysis_status.dart';
import 'discovery_occurrence_continuous_analysis.dart';
import 'sbomstatus.dart';
import 'status.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrence {
  final pulumi.Input<AnalysisCompleted>? analysisCompleted;
  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final pulumi.Input<List<Status>>? analysisError;
  /// The status of discovery for the resource.
  final pulumi.Input<DiscoveryOccurrenceAnalysisStatus>? analysisStatus;
  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final pulumi.Input<Status>? analysisStatusError;
  /// Whether the resource is continuously analyzed.
  final pulumi.Input<DiscoveryOccurrenceContinuousAnalysis>? continuousAnalysis;
  /// The CPE of the resource being scanned.
  final pulumi.Input<String>? cpe;
  /// The last time this resource was scanned.
  final pulumi.Input<String>? lastScanTime;
  /// The status of an SBOM generation.
  final pulumi.Input<SBOMStatus>? sbomStatus;

  /// Creates a new [DiscoveryOccurrence].
  /// [analysisCompleted] Optional.
  /// [analysisError] Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  /// [analysisStatus] The status of discovery for the resource.
  /// [analysisStatusError] When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  /// [continuousAnalysis] Whether the resource is continuously analyzed.
  /// [cpe] The CPE of the resource being scanned.
  /// [lastScanTime] The last time this resource was scanned.
  /// [sbomStatus] The status of an SBOM generation.
  const DiscoveryOccurrence({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.continuousAnalysis,
    this.cpe,
    this.lastScanTime,
    this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisCompleted': ?pulumi.Input.mapOptionalInputValue<AnalysisCompleted, Map<String, dynamic>>(analysisCompleted, (value) => value.toMap()),
      'analysisError': ?pulumi.Input.mapOptionalInputValue<List<Status>, List<Map<String, dynamic>>>(analysisError, (value) => pulumi.Input.encodeList<Status, Map<String, dynamic>>(value, (value) => value.toMap())),
      'analysisStatus': ?pulumi.Input.mapOptionalInputValue<DiscoveryOccurrenceAnalysisStatus, String>(analysisStatus, (value) => value.wireValue),
      'analysisStatusError': ?pulumi.Input.mapOptionalInputValue<Status, Map<String, dynamic>>(analysisStatusError, (value) => value.toMap()),
      'continuousAnalysis': ?pulumi.Input.mapOptionalInputValue<DiscoveryOccurrenceContinuousAnalysis, String>(continuousAnalysis, (value) => value.wireValue),
      'cpe': ?cpe,
      'lastScanTime': ?lastScanTime,
      'sbomStatus': ?pulumi.Input.mapOptionalInputValue<SBOMStatus, Map<String, dynamic>>(sbomStatus, (value) => value.toMap()),
    };
  }

  factory DiscoveryOccurrence.fromMap(Map<String, dynamic> map) {
    return DiscoveryOccurrence(
      analysisCompleted: (() { final guardedValue = map['analysisCompleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisCompleted.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      analysisError: (() { final guardedValue = map['analysisError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Status>(guardedValue, (value) => Status.fromMap((value as Map).cast<String, dynamic>()))); })(),
      analysisStatus: (() { final guardedValue = map['analysisStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveryOccurrenceAnalysisStatus.fromValue(guardedValue as String)); })(),
      analysisStatusError: (() { final guardedValue = map['analysisStatusError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Status.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continuousAnalysis: (() { final guardedValue = map['continuousAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveryOccurrenceContinuousAnalysis.fromValue(guardedValue as String)); })(),
      cpe: (() { final guardedValue = map['cpe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastScanTime: (() { final guardedValue = map['lastScanTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbomStatus: (() { final guardedValue = map['sbomStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBOMStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

