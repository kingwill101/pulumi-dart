// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig {
  /// When true and `useTopicSchema` is true, any fields that are a part of the topic schema that are
  /// not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas
  /// must be kept in sync and any messages with extra fields are not written and remain in the
  /// subscription's backlog.
  final pulumi.Input<bool?>? dropUnknownFields;
  /// The service account to use to write to BigQuery. The subscription creator or updater that
  /// specifies this field must have `iam.serviceAccounts.actAs` permission on the service account.
  /// If not specified, the Pub/Sub service agent,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final pulumi.Input<String?>? serviceAccountEmail;
  /// The name of the table to which to write data, of the form
  /// {projectId}.{datasetId}.{tableId}
  final pulumi.Input<String?>? table;
  /// When true, use the BigQuery table's schema as the columns to write to in BigQuery.
  /// `useTableSchema` and `useTopicSchema` cannot be enabled at the same time.
  final pulumi.Input<bool?>? useTableSchema;
  /// When true, use the topic's schema as the columns to write to in BigQuery,
  /// if it exists. `useTopicSchema` and `useTableSchema` cannot be enabled at the same time.
  final pulumi.Input<bool?>? useTopicSchema;
  /// When true, write the subscription name, message_id, publish_time, attributes, and orderingKey
  /// to additional columns in the table. The subscription name, message_id, and publishTime fields
  /// are put in their own columns while all other message properties (other than data) are written
  /// to a JSON object in the attributes column.
  final pulumi.Input<bool?>? writeMetadata;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig].
  /// [dropUnknownFields] When true and `useTopicSchema` is true, any fields that are a part of the topic schema that are
  /// [serviceAccountEmail] The service account to use to write to BigQuery. The subscription creator or updater that
  /// [table] The name of the table to which to write data, of the form
  /// [useTableSchema] When true, use the BigQuery table's schema as the columns to write to in BigQuery.
  /// [useTopicSchema] When true, use the topic's schema as the columns to write to in BigQuery,
  /// [writeMetadata] When true, write the subscription name, message_id, publish_time, attributes, and orderingKey
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig({
    this.dropUnknownFields,
    this.serviceAccountEmail,
    this.table,
    this.useTableSchema,
    this.useTopicSchema,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropUnknownFields': ?dropUnknownFields,
      'serviceAccountEmail': ?serviceAccountEmail,
      'table': ?table,
      'useTableSchema': ?useTableSchema,
      'useTopicSchema': ?useTopicSchema,
      'writeMetadata': ?writeMetadata,
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionBigqueryConfig(
      dropUnknownFields: (() { final guardedValue = map['dropUnknownFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useTableSchema: (() { final guardedValue = map['useTableSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useTopicSchema: (() { final guardedValue = map['useTopicSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      writeMetadata: (() { final guardedValue = map['writeMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
