// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
class AnalysisCompletedResponse {
  final pulumi.Input<List<String>> analysisType;

  /// Creates a new [AnalysisCompletedResponse].
  /// [analysisType] Required.
  AnalysisCompletedResponse({required this.analysisType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'analysisType': analysisType};
  }

  factory AnalysisCompletedResponse.fromMap(Map<String, dynamic> map) {
    return AnalysisCompletedResponse(
      analysisType: pulumi.Input.fromValue(
        (map['analysisType'] as List).cast<String>(),
      ),
    );
  }
}
