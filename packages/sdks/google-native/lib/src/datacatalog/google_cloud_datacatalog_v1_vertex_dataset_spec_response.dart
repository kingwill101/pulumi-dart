// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for vertex dataset resources.
class GoogleCloudDatacatalogV1VertexDatasetSpecResponse {
  /// The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  final pulumi.Input<String> dataItemCount;
  /// Type of the dataset.
  final pulumi.Input<String> dataType;

  /// Creates a new [GoogleCloudDatacatalogV1VertexDatasetSpecResponse].
  /// [dataItemCount] The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  /// [dataType] Type of the dataset.
  GoogleCloudDatacatalogV1VertexDatasetSpecResponse({
    required this.dataItemCount,
    required this.dataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataItemCount': dataItemCount,
      'dataType': dataType,
    };
  }

  factory GoogleCloudDatacatalogV1VertexDatasetSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexDatasetSpecResponse(
      dataItemCount: pulumi.Input.fromValue(map['dataItemCount'] as String),
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
    );
  }
}

