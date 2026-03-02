// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of tags to be filtered.
class TagFilterList {
  /// Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,. They may be provided by "Keyword" or "Tag". For example "PatientID", "00100010".
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [TagFilterList].
  /// [tags] Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,. They may be provided by "Keyword" or "Tag". For example "PatientID", "00100010".
  TagFilterList({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory TagFilterList.fromMap(Map<String, dynamic> map) {
    return TagFilterList(
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

