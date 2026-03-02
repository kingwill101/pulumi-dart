// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsDatasetConfigSourceProjects {
  /// The list of project numbers to include in the DatasetConfig.
  final pulumi.Input<List<String>>? projectNumbers;

  /// Creates a new [InsightsDatasetConfigSourceProjects].
  /// [projectNumbers] The list of project numbers to include in the DatasetConfig.
  InsightsDatasetConfigSourceProjects({
    this.projectNumbers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumbers': ?projectNumbers,
    };
  }

  factory InsightsDatasetConfigSourceProjects.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigSourceProjects(
      projectNumbers: map['projectNumbers'] == null ? null : ((map['projectNumbers']! as List).cast<String>()).input(),
    );
  }
}

