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
  const DiscoveredContaineranalysisV1beta1({
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
      'analysisStatus': ?pulumi.Input.mapOptionalInputValue<DiscoveredAnalysisStatusContaineranalysisV1beta1, String>(analysisStatus, (value) => value.wireValue),
      'analysisStatusError': ?pulumi.Input.mapOptionalInputValue<StatusContaineranalysisV1beta1, Map<String, dynamic>>(analysisStatusError, (value) => value.toMap()),
      'continuousAnalysis': ?pulumi.Input.mapOptionalInputValue<DiscoveredContinuousAnalysisContaineranalysisV1beta1, String>(continuousAnalysis, (value) => value.wireValue),
      'lastAnalysisTime': ?lastAnalysisTime,
      'lastScanTime': ?lastScanTime,
      'sbomStatus': ?pulumi.Input.mapOptionalInputValue<SBOMStatusContaineranalysisV1beta1, Map<String, dynamic>>(sbomStatus, (value) => value.toMap()),
    };
  }

  factory DiscoveredContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DiscoveredContaineranalysisV1beta1(
      analysisCompleted: (() { final guardedValue = map['analysisCompleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisCompletedContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      analysisError: (() { final guardedValue = map['analysisError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatusContaineranalysisV1beta1>(guardedValue, (value) => StatusContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      analysisStatus: (() { final guardedValue = map['analysisStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveredAnalysisStatusContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
      analysisStatusError: (() { final guardedValue = map['analysisStatusError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continuousAnalysis: (() { final guardedValue = map['continuousAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveredContinuousAnalysisContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
      lastAnalysisTime: (() { final guardedValue = map['lastAnalysisTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastScanTime: (() { final guardedValue = map['lastScanTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbomStatus: (() { final guardedValue = map['sbomStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBOMStatusContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

