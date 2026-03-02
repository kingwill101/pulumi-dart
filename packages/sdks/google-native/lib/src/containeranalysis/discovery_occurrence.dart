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
  DiscoveryOccurrence({
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
      'analysisStatus': ?pulumi.Input.mapOptionalInputValue<DiscoveryOccurrenceAnalysisStatus, String>(analysisStatus, (value) => value.value),
      'analysisStatusError': ?pulumi.Input.mapOptionalInputValue<Status, Map<String, dynamic>>(analysisStatusError, (value) => value.toMap()),
      'continuousAnalysis': ?pulumi.Input.mapOptionalInputValue<DiscoveryOccurrenceContinuousAnalysis, String>(continuousAnalysis, (value) => value.value),
      'cpe': ?cpe,
      'lastScanTime': ?lastScanTime,
      'sbomStatus': ?pulumi.Input.mapOptionalInputValue<SBOMStatus, Map<String, dynamic>>(sbomStatus, (value) => value.toMap()),
    };
  }

  factory DiscoveryOccurrence.fromMap(Map<String, dynamic> map) {
    return DiscoveryOccurrence(
      analysisCompleted: map['analysisCompleted'] == null ? null : (AnalysisCompleted.fromMap((map['analysisCompleted']! as Map).cast<String, dynamic>())).input(),
      analysisError: map['analysisError'] == null ? null : (pulumi.Input.decodeList<Status>(map['analysisError']!, (value) => Status.fromMap((value as Map).cast<String, dynamic>()))).input(),
      analysisStatus: map['analysisStatus'] == null ? null : (DiscoveryOccurrenceAnalysisStatus.fromValue(map['analysisStatus']! as String)).input(),
      analysisStatusError: map['analysisStatusError'] == null ? null : (Status.fromMap((map['analysisStatusError']! as Map).cast<String, dynamic>())).input(),
      continuousAnalysis: map['continuousAnalysis'] == null ? null : (DiscoveryOccurrenceContinuousAnalysis.fromValue(map['continuousAnalysis']! as String)).input(),
      cpe: map['cpe'] == null ? null : (map['cpe']! as String).input(),
      lastScanTime: map['lastScanTime'] == null ? null : (map['lastScanTime']! as String).input(),
      sbomStatus: map['sbomStatus'] == null ? null : (SBOMStatus.fromMap((map['sbomStatus']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

