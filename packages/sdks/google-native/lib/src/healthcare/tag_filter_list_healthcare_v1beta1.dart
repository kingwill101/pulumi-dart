// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of tags to be filtered.
class TagFilterListHealthcareV1beta1 {
  /// Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,. They may be provided by "Keyword" or "Tag". For example, "PatientID", "00100010".
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [TagFilterListHealthcareV1beta1].
  /// [tags] Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,. They may be provided by "Keyword" or "Tag". For example, "PatientID", "00100010".
  TagFilterListHealthcareV1beta1({this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tags': ?tags};
  }

  factory TagFilterListHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TagFilterListHealthcareV1beta1(
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
