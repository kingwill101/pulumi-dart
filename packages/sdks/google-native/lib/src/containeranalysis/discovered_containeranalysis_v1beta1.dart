// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed_containeranalysis_v1beta1.dart';
import 'discovered_analysis_status_containeranalysis_v1beta1.dart';
import 'discovered_continuous_analysis_containeranalysis_v1beta1.dart';
import 'sbomstatus_containeranalysis_v1beta1.dart';
import 'status_containeranalysis_v1beta1.dart';

/// Provides information about the analysis status of a discovered resource.
class DiscoveredContaineranalysisV1beta1 {
  final AnalysisCompletedContaineranalysisV1beta1? analysisCompleted;
  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final List<StatusContaineranalysisV1beta1>? analysisError;
  /// The status of discovery for the resource.
  final DiscoveredAnalysisStatusContaineranalysisV1beta1? analysisStatus;
  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
  final StatusContaineranalysisV1beta1? analysisStatusError;
  /// Whether the resource is continuously analyzed.
  final DiscoveredContinuousAnalysisContaineranalysisV1beta1? continuousAnalysis;
  /// The last time continuous analysis was done for this resource. Deprecated, do not use.
  final String? lastAnalysisTime;
  /// The last time this resource was scanned.
  final String? lastScanTime;
  /// The status of an SBOM generation.
  final SBOMStatusContaineranalysisV1beta1? sbomStatus;

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
      'analysisCompleted': ?analysisCompleted == null ? null : analysisCompleted!.toMap(),
      'analysisError': ?analysisError == null ? null : pulumi.Input.encodeList<StatusContaineranalysisV1beta1, Map<String, dynamic>>(analysisError!, (value) => value.toMap()),
      'analysisStatus': ?analysisStatus == null ? null : analysisStatus!.value,
      'analysisStatusError': ?analysisStatusError == null ? null : analysisStatusError!.toMap(),
      'continuousAnalysis': ?continuousAnalysis == null ? null : continuousAnalysis!.value,
      'lastAnalysisTime': ?lastAnalysisTime,
      'lastScanTime': ?lastScanTime,
      'sbomStatus': ?sbomStatus == null ? null : sbomStatus!.toMap(),
    };
  }

  factory DiscoveredContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DiscoveredContaineranalysisV1beta1(
      analysisCompleted: map['analysisCompleted'] == null ? null : AnalysisCompletedContaineranalysisV1beta1.fromMap((map['analysisCompleted'] as Map).cast<String, dynamic>()),
      analysisError: map['analysisError'] == null ? null : pulumi.Input.decodeList<StatusContaineranalysisV1beta1>(map['analysisError'], (value) => StatusContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      analysisStatus: map['analysisStatus'] == null ? null : DiscoveredAnalysisStatusContaineranalysisV1beta1.fromValue(map['analysisStatus'] as String),
      analysisStatusError: map['analysisStatusError'] == null ? null : StatusContaineranalysisV1beta1.fromMap((map['analysisStatusError'] as Map).cast<String, dynamic>()),
      continuousAnalysis: map['continuousAnalysis'] == null ? null : DiscoveredContinuousAnalysisContaineranalysisV1beta1.fromValue(map['continuousAnalysis'] as String),
      lastAnalysisTime: map['lastAnalysisTime'] == null ? null : map['lastAnalysisTime'] as String,
      lastScanTime: map['lastScanTime'] == null ? null : map['lastScanTime'] as String,
      sbomStatus: map['sbomStatus'] == null ? null : SBOMStatusContaineranalysisV1beta1.fromMap((map['sbomStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

