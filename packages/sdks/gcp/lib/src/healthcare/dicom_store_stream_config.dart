// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_stream_config_bigquery_destination.dart';

class DicomStoreStreamConfig {
  /// BigQueryDestination to include a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  /// Structure is documented below.
  final pulumi.Input<DicomStoreStreamConfigBigqueryDestination> bigqueryDestination;

  /// Creates a new [DicomStoreStreamConfig].
  /// [bigqueryDestination] BigQueryDestination to include a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  const DicomStoreStreamConfig({
    required this.bigqueryDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': pulumi.Input.mapInputValue<DicomStoreStreamConfigBigqueryDestination, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
    };
  }

  factory DicomStoreStreamConfig.fromMap(Map<String, dynamic> map) {
    return DicomStoreStreamConfig(
      bigqueryDestination: pulumi.Input.fromValue(DicomStoreStreamConfigBigqueryDestination.fromMap((map['bigqueryDestination']! as Map).cast<String, dynamic>())),
    );
  }
}
