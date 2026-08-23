// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_completed_containeranalysis_v1alpha1.dart';
import 'discovered_analysis_status.dart';
import 'discovered_continuous_analysis.dart';
import 'status_containeranalysis_v1alpha1.dart';

/// Provides information about the scan status of a discovered resource.
class Discovered {
  /// The list of analysis that were completed for a resource.
  final pulumi.Input<AnalysisCompletedContaineranalysisV1alpha1>? analysisCompleted;
  /// Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  final pulumi.Input<List<StatusContaineranalysisV1alpha1>>? analysisError;
  /// The status of discovery for the resource.
  final pulumi.Input<DiscoveredAnalysisStatus>? analysisStatus;
  /// When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage output only and populated by the API.
  final pulumi.Input<StatusContaineranalysisV1alpha1>? analysisStatusError;
  /// The time occurrences related to this discovery occurrence were archived.
  final pulumi.Input<String>? archiveTime;
  /// Whether the resource is continuously analyzed.
  final pulumi.Input<DiscoveredContinuousAnalysis>? continuousAnalysis;
  /// The CPE of the resource being scanned.
  final pulumi.Input<String>? cpe;
  /// The last time this resource was scanned.
  final pulumi.Input<String>? lastScanTime;

  /// Creates a new [Discovered].
  /// [analysisCompleted] The list of analysis that were completed for a resource.
  /// [analysisError] Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  /// [analysisStatus] The status of discovery for the resource.
  /// [analysisStatusError] When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage output only and populated by the API.
  /// [archiveTime] The time occurrences related to this discovery occurrence were archived.
  /// [continuousAnalysis] Whether the resource is continuously analyzed.
  /// [cpe] The CPE of the resource being scanned.
  /// [lastScanTime] The last time this resource was scanned.
  const Discovered({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.archiveTime,
    this.continuousAnalysis,
    this.cpe,
    this.lastScanTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisCompleted': ?pulumi.Input.mapOptionalInputValue<AnalysisCompletedContaineranalysisV1alpha1, Map<String, dynamic>>(analysisCompleted, (value) => value.toMap()),
      'analysisError': ?pulumi.Input.mapOptionalInputValue<List<StatusContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(analysisError, (value) => pulumi.Input.encodeList<StatusContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'analysisStatus': ?pulumi.Input.mapOptionalInputValue<DiscoveredAnalysisStatus, String>(analysisStatus, (value) => value.wireValue),
      'analysisStatusError': ?pulumi.Input.mapOptionalInputValue<StatusContaineranalysisV1alpha1, Map<String, dynamic>>(analysisStatusError, (value) => value.toMap()),
      'archiveTime': ?archiveTime,
      'continuousAnalysis': ?pulumi.Input.mapOptionalInputValue<DiscoveredContinuousAnalysis, String>(continuousAnalysis, (value) => value.wireValue),
      'cpe': ?cpe,
      'lastScanTime': ?lastScanTime,
    };
  }

  factory Discovered.fromMap(Map<String, dynamic> map) {
    return Discovered(
      analysisCompleted: (() { final guardedValue = map['analysisCompleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisCompletedContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      analysisError: (() { final guardedValue = map['analysisError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatusContaineranalysisV1alpha1>(guardedValue, (value) => StatusContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      analysisStatus: (() { final guardedValue = map['analysisStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveredAnalysisStatus.fromValue(guardedValue as String)); })(),
      analysisStatusError: (() { final guardedValue = map['analysisStatusError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      archiveTime: (() { final guardedValue = map['archiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      continuousAnalysis: (() { final guardedValue = map['continuousAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveredContinuousAnalysis.fromValue(guardedValue as String)); })(),
      cpe: (() { final guardedValue = map['cpe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastScanTime: (() { final guardedValue = map['lastScanTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
