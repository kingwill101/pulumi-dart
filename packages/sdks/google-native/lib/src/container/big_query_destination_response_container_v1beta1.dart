// ignore_for_file: unused_element, unnecessary_cast


/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestinationResponseContainerV1beta1 {
  /// The ID of a BigQuery Dataset.
  final String datasetId;

  /// Creates a new [BigQueryDestinationResponseContainerV1beta1].
  /// [datasetId] The ID of a BigQuery Dataset.
  BigQueryDestinationResponseContainerV1beta1({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
    };
  }

  factory BigQueryDestinationResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationResponseContainerV1beta1(
      datasetId: map['datasetId'] as String,
    );
  }
}

