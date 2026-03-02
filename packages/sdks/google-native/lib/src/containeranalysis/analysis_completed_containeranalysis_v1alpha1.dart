// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedContaineranalysisV1alpha1 {
  /// type of analysis that were completed on a resource.
  final pulumi.Input<List<String>>? analysisType;

  /// Creates a new [AnalysisCompletedContaineranalysisV1alpha1].
  /// [analysisType] type of analysis that were completed on a resource.
  AnalysisCompletedContaineranalysisV1alpha1({
    this.analysisType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisType': ?analysisType,
    };
  }

  factory AnalysisCompletedContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return AnalysisCompletedContaineranalysisV1alpha1(
      analysisType: map['analysisType'] == null ? null : ((map['analysisType'] as List).cast<String>()).input(),
    );
  }
}

