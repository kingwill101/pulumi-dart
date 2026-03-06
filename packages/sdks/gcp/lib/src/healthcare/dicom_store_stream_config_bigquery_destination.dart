// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DicomStoreStreamConfigBigqueryDestination {
  /// a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  final pulumi.Input<String> tableUri;

  /// Creates a new [DicomStoreStreamConfigBigqueryDestination].
  /// [tableUri] a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  const DicomStoreStreamConfigBigqueryDestination({
    required this.tableUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableUri': tableUri,
    };
  }

  factory DicomStoreStreamConfigBigqueryDestination.fromMap(Map<String, dynamic> map) {
    return DicomStoreStreamConfigBigqueryDestination(
      tableUri: pulumi.Input.fromValue(map['tableUri'] as String),
    );
  }
}

