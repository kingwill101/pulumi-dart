// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseKafkaSchemaRegistry resources.
class DatabaseKafkaSchemaRegistryState {
  /// The ID of the target Kafka cluster.
  final pulumi.Input<String>? clusterId;
  /// The schema definition as a string.
  final pulumi.Input<String>? schema;
  /// The schema type. Available values are: avro, json, or protobuf.
  final pulumi.Input<String>? schemaType;
  /// The name of the schema subject.
  final pulumi.Input<String>? subjectName;

  /// Creates a new [DatabaseKafkaSchemaRegistryState].
  /// [clusterId] The ID of the target Kafka cluster.
  /// [schema] The schema definition as a string.
  /// [schemaType] The schema type. Available values are: avro, json, or protobuf.
  /// [subjectName] The name of the schema subject.
  DatabaseKafkaSchemaRegistryState({
    this.clusterId,
    this.schema,
    this.schemaType,
    this.subjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'schema': ?schema,
      'schemaType': ?schemaType,
      'subjectName': ?subjectName,
    };
  }

  factory DatabaseKafkaSchemaRegistryState.fromMap(Map<String, dynamic> map) {
    return DatabaseKafkaSchemaRegistryState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      schema: map['schema'] == null ? null : (map['schema'] as String).input(),
      schemaType: map['schemaType'] == null ? null : (map['schemaType'] as String).input(),
      subjectName: map['subjectName'] == null ? null : (map['subjectName'] as String).input(),
    );
  }
}

