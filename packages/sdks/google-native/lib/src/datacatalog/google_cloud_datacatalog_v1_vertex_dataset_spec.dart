// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_vertex_dataset_spec_data_type.dart';

/// Specification for vertex dataset resources.
class GoogleCloudDatacatalogV1VertexDatasetSpec {
  /// The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  final pulumi.Input<String>? dataItemCount;
  /// Type of the dataset.
  final pulumi.Input<GoogleCloudDatacatalogV1VertexDatasetSpecDataType>? dataType;

  /// Creates a new [GoogleCloudDatacatalogV1VertexDatasetSpec].
  /// [dataItemCount] The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  /// [dataType] Type of the dataset.
  GoogleCloudDatacatalogV1VertexDatasetSpec({
    this.dataItemCount,
    this.dataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataItemCount': ?dataItemCount,
      'dataType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1VertexDatasetSpecDataType, String>(dataType, (value) => value.value),
    };
  }

  factory GoogleCloudDatacatalogV1VertexDatasetSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexDatasetSpec(
      dataItemCount: map['dataItemCount'] == null ? null : (map['dataItemCount']! as String).input(),
      dataType: map['dataType'] == null ? null : (GoogleCloudDatacatalogV1VertexDatasetSpecDataType.fromValue(map['dataType']! as String)).input(),
    );
  }
}

