// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInsightsDatasetConfigSourceProject {
  /// The list of project numbers to include in the DatasetConfig.
  final pulumi.Input<List<String>> projectNumbers;

  /// Creates a new [GetInsightsDatasetConfigSourceProject].
  /// [projectNumbers] The list of project numbers to include in the DatasetConfig.
  GetInsightsDatasetConfigSourceProject({
    required this.projectNumbers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumbers': projectNumbers,
    };
  }

  factory GetInsightsDatasetConfigSourceProject.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigSourceProject(
      projectNumbers: ((map['projectNumbers'] as List).cast<String>()).input(),
    );
  }
}

