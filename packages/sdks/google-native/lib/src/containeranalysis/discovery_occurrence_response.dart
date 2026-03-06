// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed_response.dart';
import 'sbomstatus_response.dart';
import 'status_response.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrenceResponse {
  final pulumi.Input<AnalysisCompletedResponse> analysisCompleted;
  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final pulumi.Input<List<StatusResponse>> analysisError;
  /// The status of discovery for the resource.
  final pulumi.Input<String> analysisStatus;
  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final pulumi.Input<StatusResponse> analysisStatusError;
  /// The time occurrences related to this discovery occurrence were archived.
  final pulumi.Input<String> archiveTime;
  /// Whether the resource is continuously analyzed.
  final pulumi.Input<String> continuousAnalysis;
  /// The CPE of the resource being scanned.
  final pulumi.Input<String> cpe;
  /// The last time this resource was scanned.
  final pulumi.Input<String> lastScanTime;
  /// The status of an SBOM generation.
  final pulumi.Input<SBOMStatusResponse> sbomStatus;

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
  const DiscoveryOccurrenceResponse({
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
      'analysisCompleted': pulumi.Input.mapInputValue<AnalysisCompletedResponse, Map<String, dynamic>>(analysisCompleted, (value) => value.toMap()),
      'analysisError': pulumi.Input.mapInputValue<List<StatusResponse>, List<Map<String, dynamic>>>(analysisError, (value) => pulumi.Input.encodeList<StatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'analysisStatus': analysisStatus,
      'analysisStatusError': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(analysisStatusError, (value) => value.toMap()),
      'archiveTime': archiveTime,
      'continuousAnalysis': continuousAnalysis,
      'cpe': cpe,
      'lastScanTime': lastScanTime,
      'sbomStatus': pulumi.Input.mapInputValue<SBOMStatusResponse, Map<String, dynamic>>(sbomStatus, (value) => value.toMap()),
    };
  }

  factory DiscoveryOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryOccurrenceResponse(
      analysisCompleted: pulumi.Input.fromValue(AnalysisCompletedResponse.fromMap((map['analysisCompleted']! as Map).cast<String, dynamic>())),
      analysisError: pulumi.Input.fromValue(pulumi.Input.decodeList<StatusResponse>(map['analysisError']!, (value) => StatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
      analysisStatus: pulumi.Input.fromValue(map['analysisStatus'] as String),
      analysisStatusError: pulumi.Input.fromValue(StatusResponse.fromMap((map['analysisStatusError']! as Map).cast<String, dynamic>())),
      archiveTime: pulumi.Input.fromValue(map['archiveTime'] as String),
      continuousAnalysis: pulumi.Input.fromValue(map['continuousAnalysis'] as String),
      cpe: pulumi.Input.fromValue(map['cpe'] as String),
      lastScanTime: pulumi.Input.fromValue(map['lastScanTime'] as String),
      sbomStatus: pulumi.Input.fromValue(SBOMStatusResponse.fromMap((map['sbomStatus']! as Map).cast<String, dynamic>())),
    );
  }
}

