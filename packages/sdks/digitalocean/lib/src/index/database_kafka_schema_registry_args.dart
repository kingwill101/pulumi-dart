// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_kafka_schema_registry_database_kafka_schema_registry_args_doc}
/// The set of arguments for DatabaseKafkaSchemaRegistry.
/// {@endtemplate}
/// {@macro pulumi_index_database_kafka_schema_registry_database_kafka_schema_registry_args_doc}
class DatabaseKafkaSchemaRegistryArgs {
  /// The ID of the target Kafka cluster.
  final pulumi.Input<String> clusterId;
  /// The schema definition as a string.
  final pulumi.Input<String> schema;
  /// The schema type. Available values are: avro, json, or protobuf.
  final pulumi.Input<String> schemaType;
  /// The name of the schema subject.
  final pulumi.Input<String> subjectName;

  /// Creates a new [DatabaseKafkaSchemaRegistryArgs].
  /// [clusterId] The ID of the target Kafka cluster.
  /// [schema] The schema definition as a string.
  /// [schemaType] The schema type. Available values are: avro, json, or protobuf.
  /// [subjectName] The name of the schema subject.
  DatabaseKafkaSchemaRegistryArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> schema,
    required pulumi.Output<String> schemaType,
    required pulumi.Output<String> subjectName,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      schema = pulumi.Input.asInput<String>(schema),
      schemaType = pulumi.Input.asInput<String>(schemaType),
      subjectName = pulumi.Input.asInput<String>(subjectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'schema': schema,
      'schemaType': schemaType,
      'subjectName': subjectName,
    };
  }

  factory DatabaseKafkaSchemaRegistryArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseKafkaSchemaRegistryArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      schema: pulumi.Output.create<String>(map['schema'] as String),
      schemaType: pulumi.Output.create<String>(map['schemaType'] as String),
      subjectName: pulumi.Output.create<String>(map['subjectName'] as String),
    );
  }
}

