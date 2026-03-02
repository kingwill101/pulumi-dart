// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_schema_partition_field.dart';
import 'google_cloud_dataplex_v1_schema_partition_style.dart';
import 'google_cloud_dataplex_v1_schema_schema_field.dart';

/// Schema information describing the structure and layout of the data.
class GoogleCloudDataplexV1Schema {
  /// Optional. The sequence of fields describing data in table entities. Note: BigQuery SchemaFields are immutable.
  final pulumi.Input<List<GoogleCloudDataplexV1SchemaSchemaField>>? fields;
  /// Optional. The sequence of fields describing the partition structure in entities. If this field is empty, there are no partitions within the data.
  final pulumi.Input<List<GoogleCloudDataplexV1SchemaPartitionField>>? partitionFields;
  /// Optional. The structure of paths containing partition data within the entity.
  final pulumi.Input<GoogleCloudDataplexV1SchemaPartitionStyle>? partitionStyle;
  /// Set to true if user-managed or false if managed by Dataplex. The default is false (managed by Dataplex). Set to falseto enable Dataplex discovery to update the schema. including new data discovery, schema inference, and schema evolution. Users retain the ability to input and edit the schema. Dataplex treats schema input by the user as though produced by a previous Dataplex discovery operation, and it will evolve the schema and take action based on that treatment. Set to true to fully manage the entity schema. This setting guarantees that Dataplex will not change schema fields.
  final pulumi.Input<bool> userManaged;

  /// Creates a new [GoogleCloudDataplexV1Schema].
  /// [fields] Optional. The sequence of fields describing data in table entities. Note: BigQuery SchemaFields are immutable.
  /// [partitionFields] Optional. The sequence of fields describing the partition structure in entities. If this field is empty, there are no partitions within the data.
  /// [partitionStyle] Optional. The structure of paths containing partition data within the entity.
  /// [userManaged] Set to true if user-managed or false if managed by Dataplex. The default is false (managed by Dataplex). Set to falseto enable Dataplex discovery to update the schema. including new data discovery, schema inference, and schema evolution. Users retain the ability to input and edit the schema. Dataplex treats schema input by the user as though produced by a previous Dataplex discovery operation, and it will evolve the schema and take action based on that treatment. Set to true to fully manage the entity schema. This setting guarantees that Dataplex will not change schema fields.
  GoogleCloudDataplexV1Schema({
    this.fields,
    this.partitionFields,
    this.partitionStyle,
    required this.userManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDataplexV1SchemaSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1SchemaSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionFields': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDataplexV1SchemaPartitionField>, List<Map<String, dynamic>>>(partitionFields, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1SchemaPartitionField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitionStyle': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1SchemaPartitionStyle, String>(partitionStyle, (value) => value.value),
      'userManaged': userManaged,
    };
  }

  factory GoogleCloudDataplexV1Schema.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1Schema(
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDataplexV1SchemaSchemaField>(map['fields']!, (value) => GoogleCloudDataplexV1SchemaSchemaField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partitionFields: map['partitionFields'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDataplexV1SchemaPartitionField>(map['partitionFields']!, (value) => GoogleCloudDataplexV1SchemaPartitionField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      partitionStyle: map['partitionStyle'] == null ? null : (GoogleCloudDataplexV1SchemaPartitionStyle.fromValue(map['partitionStyle']! as String)).input(),
      userManaged: (map['userManaged'] as bool).input(),
    );
  }
}

