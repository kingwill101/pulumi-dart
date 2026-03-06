// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedContaineranalysisV1beta1 {
  final pulumi.Input<List<String>>? analysisType;

  /// Creates a new [AnalysisCompletedContaineranalysisV1beta1].
  /// [analysisType] Optional.
  const AnalysisCompletedContaineranalysisV1beta1({
    this.analysisType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisType': ?analysisType,
    };
  }

  factory AnalysisCompletedContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AnalysisCompletedContaineranalysisV1beta1(
      analysisType: (() { final guardedValue = map['analysisType']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

