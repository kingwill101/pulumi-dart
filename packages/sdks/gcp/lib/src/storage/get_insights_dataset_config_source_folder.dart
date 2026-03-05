// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInsightsDatasetConfigSourceFolder {
  /// The list of folder numbers to include in the DatasetConfig.
  final pulumi.Input<List<String>> folderNumbers;

  /// Creates a new [GetInsightsDatasetConfigSourceFolder].
  /// [folderNumbers] The list of folder numbers to include in the DatasetConfig.
  GetInsightsDatasetConfigSourceFolder({
    required this.folderNumbers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderNumbers': folderNumbers,
    };
  }

  factory GetInsightsDatasetConfigSourceFolder.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigSourceFolder(
      folderNumbers: pulumi.Input.fromValue((map['folderNumbers'] as List).cast<String>()),
    );
  }
}

