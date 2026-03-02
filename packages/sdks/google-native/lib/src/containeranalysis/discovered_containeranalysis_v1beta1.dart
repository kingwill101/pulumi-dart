// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed_containeranalysis_v1beta1.dart';
import 'discovered_analysis_status_containeranalysis_v1beta1.dart';
import 'discovered_continuous_analysis_containeranalysis_v1beta1.dart';
import 'sbomstatus_containeranalysis_v1beta1.dart';
import 'status_containeranalysis_v1beta1.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveredContaineranalysisV1beta1 {
  final pulumi.Input<AnalysisCompletedContaineranalysisV1beta1>? analysisCompleted;
  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final pulumi.Input<List<StatusContaineranalysisV1beta1>>? analysisError;
  /// The status of discovery for the resource.
  final pulumi.Input<DiscoveredAnalysisStatusContaineranalysisV1beta1>? analysisStatus;
  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final pulumi.Input<StatusContaineranalysisV1beta1>? analysisStatusError;
  /// Whether the resource is continuously analyzed.
  final pulumi.Input<DiscoveredContinuousAnalysisContaineranalysisV1beta1>? continuousAnalysis;
  /// The last time continuous analysis was done for this resource. Deprecated, do not use.
  final pulumi.Input<String>? lastAnalysisTime;
  /// The last time this resource was scanned.
  final pulumi.Input<String>? lastScanTime;
  /// The status of an SBOM generation.
  final pulumi.Input<SBOMStatusContaineranalysisV1beta1>? sbomStatus;

  /// Creates a new [DiscoveredContaineranalysisV1beta1].
  /// [analysisCompleted] Optional.
  /// [analysisError] Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  /// [analysisStatus] The status of discovery for the resource.
  /// [analysisStatusError] When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  /// [continuousAnalysis] Whether the resource is continuously analyzed.
  /// [lastAnalysisTime] The last time continuous analysis was done for this resource. Deprecated, do not use.
  /// [lastScanTime] The last time this resource was scanned.
  /// [sbomStatus] The status of an SBOM generation.
  DiscoveredContaineranalysisV1beta1({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.continuousAnalysis,
    this.lastAnalysisTime,
    this.lastScanTime,
    this.sbomStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisCompleted': ?pulumi.Input.mapOptionalInputValue<AnalysisCompletedContaineranalysisV1beta1, Map<String, dynamic>>(analysisCompleted, (value) => value.toMap()),
      'analysisError': ?pulumi.Input.mapOptionalInputValue<List<StatusContaineranalysisV1beta1>, List<Map<String, dynamic>>>(analysisError, (value) => pulumi.Input.encodeList<StatusContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'analysisStatus': ?pulumi.Input.mapOptionalInputValue<DiscoveredAnalysisStatusContaineranalysisV1beta1, String>(analysisStatus, (value) => value.value),
      'analysisStatusError': ?pulumi.Input.mapOptionalInputValue<StatusContaineranalysisV1beta1, Map<String, dynamic>>(analysisStatusError, (value) => value.toMap()),
      'continuousAnalysis': ?pulumi.Input.mapOptionalInputValue<DiscoveredContinuousAnalysisContaineranalysisV1beta1, String>(continuousAnalysis, (value) => value.value),
      'lastAnalysisTime': ?lastAnalysisTime,
      'lastScanTime': ?lastScanTime,
      'sbomStatus': ?pulumi.Input.mapOptionalInputValue<SBOMStatusContaineranalysisV1beta1, Map<String, dynamic>>(sbomStatus, (value) => value.toMap()),
    };
  }

  factory DiscoveredContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DiscoveredContaineranalysisV1beta1(
      analysisCompleted: map['analysisCompleted'] == null ? null : (AnalysisCompletedContaineranalysisV1beta1.fromMap((map['analysisCompleted'] as Map).cast<String, dynamic>())).input(),
      analysisError: map['analysisError'] == null ? null : (pulumi.Input.decodeList<StatusContaineranalysisV1beta1>(map['analysisError'], (value) => StatusContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      analysisStatus: map['analysisStatus'] == null ? null : (DiscoveredAnalysisStatusContaineranalysisV1beta1.fromValue(map['analysisStatus'] as String)).input(),
      analysisStatusError: map['analysisStatusError'] == null ? null : (StatusContaineranalysisV1beta1.fromMap((map['analysisStatusError'] as Map).cast<String, dynamic>())).input(),
      continuousAnalysis: map['continuousAnalysis'] == null ? null : (DiscoveredContinuousAnalysisContaineranalysisV1beta1.fromValue(map['continuousAnalysis'] as String)).input(),
      lastAnalysisTime: map['lastAnalysisTime'] == null ? null : (map['lastAnalysisTime'] as String).input(),
      lastScanTime: map['lastScanTime'] == null ? null : (map['lastScanTime'] as String).input(),
      sbomStatus: map['sbomStatus'] == null ? null : (SBOMStatusContaineranalysisV1beta1.fromMap((map['sbomStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

