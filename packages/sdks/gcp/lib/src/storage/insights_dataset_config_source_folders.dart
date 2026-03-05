// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsDatasetConfigSourceFolders {
  /// The list of folder numbers to include in the DatasetConfig.
  final pulumi.Input<List<String>>? folderNumbers;

  /// Creates a new [InsightsDatasetConfigSourceFolders].
  /// [folderNumbers] The list of folder numbers to include in the DatasetConfig.
  InsightsDatasetConfigSourceFolders({
    this.folderNumbers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderNumbers': ?folderNumbers,
    };
  }

  factory InsightsDatasetConfigSourceFolders.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigSourceFolders(
      folderNumbers: (() { final guardedValue = map['folderNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

