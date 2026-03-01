// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed_response.dart';
import 'sbomstatus_response.dart';
import 'status_response.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrenceResponse {
  final AnalysisCompletedResponse analysisCompleted;
  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<StatusResponse> analysisError;
  /// The status of discovery for the resource.
  final String analysisStatus;
  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final StatusResponse analysisStatusError;
  /// The time occurrences related to this discovery occurrence were archived.
  final String archiveTime;
  /// Whether the resource is continuously analyzed.
  final String continuousAnalysis;
  /// The CPE of the resource being scanned.
  final String cpe;
  /// The last time this resource was scanned.
  final String lastScanTime;
  /// The status of an SBOM generation.
  final SBOMStatusResponse sbomStatus;

  /// Creates a new [DiscoveryOccurrenceResponse].
  /// [analysisCompleted] Required.
  /// [analysisError] Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  /// [analysisStatus] The status of discovery for the resource.
  /// [analysisStatusError] When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  /// [archiveTime] The time occurrences related to this discovery occurrence were archived.
  /// [continuousAnalysis] Whether the resource is continuously analyzed.
  /// [cpe] The CPE of the resource being scanned.
  /// [lastScanTime] The last time this resource was scanned.
  /// [sbomStatus] The status of an SBOM generation.
  DiscoveryOccurrenceResponse({
    required this.analysisCompleted,
    required this.analysisError,
    required this.analysisStatus,
    required this.analysisStatusError,
    required this.archiveTime,
    required this.continuousAnalysis,
    required this.cpe,
    required this.lastScanTime,
    required this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisCompleted': analysisCompleted.toMap(),
      'analysisError': pulumi.Input.encodeList<StatusResponse, Map<String, dynamic>>(analysisError, (value) => value.toMap()),
      'analysisStatus': analysisStatus,
      'analysisStatusError': analysisStatusError.toMap(),
      'archiveTime': archiveTime,
      'continuousAnalysis': continuousAnalysis,
      'cpe': cpe,
      'lastScanTime': lastScanTime,
      'sbomStatus': sbomStatus.toMap(),
    };
  }

  factory DiscoveryOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryOccurrenceResponse(
      analysisCompleted: AnalysisCompletedResponse.fromMap((map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: pulumi.Input.decodeList<StatusResponse>(map['analysisError'], (value) => StatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] as String,
      analysisStatusError: StatusResponse.fromMap((map['analysisStatusError'] as Map).cast<String, dynamic>()),
      archiveTime: map['archiveTime'] as String,
      continuousAnalysis: map['continuousAnalysis'] as String,
      cpe: map['cpe'] as String,
      lastScanTime: map['lastScanTime'] as String,
      sbomStatus: SBOMStatusResponse.fromMap((map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

