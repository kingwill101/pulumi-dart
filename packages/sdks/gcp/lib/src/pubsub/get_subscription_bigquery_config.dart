// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionBigqueryConfig {
  /// When true and use_topic_schema or use_table_schema is true, any fields that are a part of the topic schema or message schema that
  /// are not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync
  /// and any messages with extra fields are not written and remain in the subscription's backlog.
  final pulumi.Input<bool> dropUnknownFields;

  /// The service account to use to write to BigQuery. If not specified, the Pub/Sub
  /// [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final pulumi.Input<String> serviceAccountEmail;

  /// The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}
  final pulumi.Input<String> table;

  /// When true, use the BigQuery table's schema as the columns to write to in BigQuery. Messages
  /// must be published in JSON format. Only one of use_topic_schema and use_table_schema can be set.
  final pulumi.Input<bool> useTableSchema;

  /// When true, use the topic's schema as the columns to write to in BigQuery, if it exists.
  /// Only one of use_topic_schema and use_table_schema can be set.
  final pulumi.Input<bool> useTopicSchema;

  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to additional columns in the table.
  /// The subscription name, messageId, and publishTime fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column.
  final pulumi.Input<bool> writeMetadata;

  /// Creates a new [GetSubscriptionBigqueryConfig].
  /// [dropUnknownFields] When true and use_topic_schema or use_table_schema is true, any fields that are a part of the topic schema or message schema that
  /// [serviceAccountEmail] The service account to use to write to BigQuery. If not specified, the Pub/Sub
  /// [table] The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}
  /// [useTableSchema] When true, use the BigQuery table's schema as the columns to write to in BigQuery. Messages
  /// [useTopicSchema] When true, use the topic's schema as the columns to write to in BigQuery, if it exists.
  /// [writeMetadata] When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to additional columns in the table.
  GetSubscriptionBigqueryConfig({
    required this.dropUnknownFields,
    required this.serviceAccountEmail,
    required this.table,
    required this.useTableSchema,
    required this.useTopicSchema,
    required this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropUnknownFields': dropUnknownFields,
      'serviceAccountEmail': serviceAccountEmail,
      'table': table,
      'useTableSchema': useTableSchema,
      'useTopicSchema': useTopicSchema,
      'writeMetadata': writeMetadata,
    };
  }

  factory GetSubscriptionBigqueryConfig.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionBigqueryConfig(
      dropUnknownFields: pulumi.Input.fromValue(
        map['dropUnknownFields'] as bool,
      ),
      serviceAccountEmail: pulumi.Input.fromValue(
        map['serviceAccountEmail'] as String,
      ),
      table: pulumi.Input.fromValue(map['table'] as String),
      useTableSchema: pulumi.Input.fromValue(map['useTableSchema'] as bool),
      useTopicSchema: pulumi.Input.fromValue(map['useTopicSchema'] as bool),
      writeMetadata: pulumi.Input.fromValue(map['writeMetadata'] as bool),
    );
  }
}
