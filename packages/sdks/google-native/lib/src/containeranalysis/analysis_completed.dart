// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompleted {
  final pulumi.Input<List<String>>? analysisType;

  /// Creates a new [AnalysisCompleted].
  /// [analysisType] Optional.
  AnalysisCompleted({
    this.analysisType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisType': ?analysisType,
    };
  }

  factory AnalysisCompleted.fromMap(Map<String, dynamic> map) {
    return AnalysisCompleted(
      analysisType: map['analysisType'] == null ? null : ((map['analysisType'] as List).cast<String>()).input(),
    );
  }
}

