// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_schema_partition_field_response.dart';
import 'google_cloud_dataplex_v1_schema_schema_field_response.dart';

/// Schema information describing the structure and layout of the data.
class GoogleCloudDataplexV1SchemaResponse {
  /// Optional. The sequence of fields describing data in table entities. Note: BigQuery SchemaFields are immutable.
  final pulumi.Input<List<GoogleCloudDataplexV1SchemaSchemaFieldResponse>> fields;
  /// Optional. The sequence of fields describing the partition structure in entities. If this field is empty, there are no partitions within the data.
  final pulumi.Input<List<GoogleCloudDataplexV1SchemaPartitionFieldResponse>> partitionFields;
  /// Optional. The structure of paths containing partition data within the entity.
  final pulumi.Input<String> partitionStyle;
  /// Set to true if user-managed or false if managed by Dataplex. The default is false (managed by Dataplex). Set to falseto enable Dataplex discovery to update the schema. including new data discovery, schema inference, and schema evolution. Users retain the ability to input and edit the schema. Dataplex treats schema input by the user as though produced by a previous Dataplex discovery operation, and it will evolve the schema and take action based on that treatment. Set to true to fully manage the entity schema. This setting guarantees that Dataplex will not change schema fields.
  final pulumi.Input<bool> userManaged;

  /// Creates a new [GoogleCloudDataplexV1SchemaResponse].
  /// [fields] Optional. The sequence of fields describing data in table entities. Note: BigQuery SchemaFields are immutable.
  /// [partitionFields] Optional. The sequence of fields describing the partition structure in entities. If this field is empty, there are no partitions within the data.
  /// [partitionStyle] Optional. The structure of paths containing partition data within the entity.
  /// [userManaged] Set to true if user-managed or false if managed by Dataplex. The default is false (managed by Dataplex). Set to falseto enable Dataplex discovery to update the schema. including new data discovery, schema inference, and schema evolution. Users retain the ability to input and edit the schema. Dataplex treats schema input by the user as though produced by a previous Dataplex discovery operation, and it will evolve the schema and take action based on that treatment. Set to true to fully manage the entity schema. This setting guarantees that Dataplex will not change schema fields.
  const GoogleCloudDataplexV1SchemaResponse({
    required this.fields,
    required this.partitionFields,
    required this.partitionStyle,
    required this.userManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<GoogleCloudDataplexV1SchemaSchemaFieldResponse>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1SchemaSchemaFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionFields': pulumi.Input.mapInputValue<List<GoogleCloudDataplexV1SchemaPartitionFieldResponse>, List<Map<String, dynamic>>>(partitionFields, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1SchemaPartitionFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionStyle': partitionStyle,
      'userManaged': userManaged,
    };
  }

  factory GoogleCloudDataplexV1SchemaResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1SchemaResponse(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDataplexV1SchemaSchemaFieldResponse>(map['fields']!, (value) => GoogleCloudDataplexV1SchemaSchemaFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      partitionFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDataplexV1SchemaPartitionFieldResponse>(map['partitionFields']!, (value) => GoogleCloudDataplexV1SchemaPartitionFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      partitionStyle: pulumi.Input.fromValue(map['partitionStyle'] as String),
      userManaged: pulumi.Input.fromValue(map['userManaged'] as bool),
    );
  }
}

