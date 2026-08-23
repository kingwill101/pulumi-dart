// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed_response_containeranalysis_v1alpha1.dart';
import 'operation_response.dart';
import 'sbomstatus_response_containeranalysis_v1alpha1.dart';
import 'status_response_containeranalysis_v1alpha1.dart';

/// Provides information about the scan status of a discovered resource.
class DiscoveredResponse {
  /// The list of analysis that were completed for a resource.
  final pulumi.Input<AnalysisCompletedResponseContaineranalysisV1alpha1> analysisCompleted;
  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final pulumi.Input<List<StatusResponseContaineranalysisV1alpha1>> analysisError;
  /// The status of discovery for the resource.
  final pulumi.Input<String> analysisStatus;
  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage output only and populated by the API.
  final pulumi.Input<StatusResponseContaineranalysisV1alpha1> analysisStatusError;
  /// The time occurrences related to this discovery occurrence were archived.
  final pulumi.Input<String> archiveTime;
  /// Whether the resource is continuously analyzed.
  final pulumi.Input<String> continuousAnalysis;
  /// The CPE of the resource being scanned.
  final pulumi.Input<String> cpe;
  /// The last time this resource was scanned.
  final pulumi.Input<String> lastScanTime;
  /// An operation that indicates the status of the current scan. This field is deprecated, do not use.
  final pulumi.Input<OperationResponse> operation;
  /// The status of an SBOM generation.
  final pulumi.Input<SBOMStatusResponseContaineranalysisV1alpha1> sbomStatus;

  /// Creates a new [DiscoveredResponse].
  /// [analysisCompleted] The list of analysis that were completed for a resource.
  /// [analysisError] Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  /// [analysisStatus] The status of discovery for the resource.
  /// [analysisStatusError] When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage output only and populated by the API.
  /// [archiveTime] The time occurrences related to this discovery occurrence were archived.
  /// [continuousAnalysis] Whether the resource is continuously analyzed.
  /// [cpe] The CPE of the resource being scanned.
  /// [lastScanTime] The last time this resource was scanned.
  /// [operation] An operation that indicates the status of the current scan. This field is deprecated, do not use.
  /// [sbomStatus] The status of an SBOM generation.
  const DiscoveredResponse({
    required this.analysisCompleted,
    required this.analysisError,
    required this.analysisStatus,
    required this.analysisStatusError,
    required this.archiveTime,
    required this.continuousAnalysis,
    required this.cpe,
    required this.lastScanTime,
    required this.operation,
    required this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisCompleted': pulumi.Input.mapInputValue<AnalysisCompletedResponseContaineranalysisV1alpha1, Map<String, dynamic>>(analysisCompleted, (value) => value.toMap()),
      'analysisError': pulumi.Input.mapInputValue<List<StatusResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(analysisError, (value) => pulumi.Input.encodeList<StatusResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'analysisStatus': analysisStatus,
      'analysisStatusError': pulumi.Input.mapInputValue<StatusResponseContaineranalysisV1alpha1, Map<String, dynamic>>(analysisStatusError, (value) => value.toMap()),
      'archiveTime': archiveTime,
      'continuousAnalysis': continuousAnalysis,
      'cpe': cpe,
      'lastScanTime': lastScanTime,
      'operation': pulumi.Input.mapInputValue<OperationResponse, Map<String, dynamic>>(operation, (value) => value.toMap()),
      'sbomStatus': pulumi.Input.mapInputValue<SBOMStatusResponseContaineranalysisV1alpha1, Map<String, dynamic>>(sbomStatus, (value) => value.toMap()),
    };
  }

  factory DiscoveredResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredResponse(
      analysisCompleted: pulumi.Input.fromValue(AnalysisCompletedResponseContaineranalysisV1alpha1.fromMap((map['analysisCompleted']! as Map).cast<String, dynamic>())),
      analysisError: pulumi.Input.fromValue(pulumi.Input.decodeList<StatusResponseContaineranalysisV1alpha1>(map['analysisError']!, (value) => StatusResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      analysisStatus: pulumi.Input.fromValue(map['analysisStatus'] as String),
      analysisStatusError: pulumi.Input.fromValue(StatusResponseContaineranalysisV1alpha1.fromMap((map['analysisStatusError']! as Map).cast<String, dynamic>())),
      archiveTime: pulumi.Input.fromValue(map['archiveTime'] as String),
      continuousAnalysis: pulumi.Input.fromValue(map['continuousAnalysis'] as String),
      cpe: pulumi.Input.fromValue(map['cpe'] as String),
      lastScanTime: pulumi.Input.fromValue(map['lastScanTime'] as String),
      operation: pulumi.Input.fromValue(OperationResponse.fromMap((map['operation']! as Map).cast<String, dynamic>())),
      sbomStatus: pulumi.Input.fromValue(SBOMStatusResponseContaineranalysisV1alpha1.fromMap((map['sbomStatus']! as Map).cast<String, dynamic>())),
    );
  }
}
