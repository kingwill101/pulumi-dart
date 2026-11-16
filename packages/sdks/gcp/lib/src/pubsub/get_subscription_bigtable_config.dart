// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_bigtable_config_column_family_mapping.dart';

class GetSubscriptionBigtableConfig {
  /// The app profile to use for the Bigtable writes. If not specified, the "default" application
  /// profile will be used. The app profile must use single-cluster routing.
  final pulumi.Input<String> appProfileId;
  /// Configuration that allows writing row keys and/or columns based on fields in the input message.
  /// The input message format must be JSON if this field is set.
  ///
  /// If this field is set, top-level message fields are written to the 'data' column family with
  /// the field name as the column qualifier by default, or to an existing column family whose name
  /// matches the field name. The cell timestamp is the message publish time.
  ///
  /// If this field is not set, the row key is constructed from the subscription name, message ID hash,
  /// and message ID delimited by '#', and the message bytes are written to the 'data' column family
  /// with an empty-string column qualifier.
  final pulumi.Input<List<GetSubscriptionBigtableConfigColumnFamilyMapping>> columnFamilyMappings;
  /// The service account to use to write to Bigtable. The subscription creator or updater that
  /// specifies this field must have 'iam.serviceAccounts.actAs' permission on the service account.
  /// If not specified, the Pub/Sub [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final pulumi.Input<String> serviceAccountEmail;
  /// An output-only field that indicates whether or not the subscription can receive messages.
  final pulumi.Input<String> state;
  /// The unique name of the table to write messages to, of the form
  /// 'projects/{project}/instances/{instance}/tables/{table}'.
  final pulumi.Input<String> table;
  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to
  /// additional columns in the table under the 'pubsub_metadata' column family. The subscription name,
  /// messageId, and publishTime fields are put in their own columns while all other message properties
  /// (other than data) are written to a JSON object in the attributes column.
  final pulumi.Input<bool> writeMetadata;

  /// Creates a new [GetSubscriptionBigtableConfig].
  /// [appProfileId] The app profile to use for the Bigtable writes. If not specified, the "default" application
  /// [columnFamilyMappings] Configuration that allows writing row keys and/or columns based on fields in the input message.
  /// [serviceAccountEmail] The service account to use to write to Bigtable. The subscription creator or updater that
  /// [state] An output-only field that indicates whether or not the subscription can receive messages.
  /// [table] The unique name of the table to write messages to, of the form
  /// [writeMetadata] When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to
  const GetSubscriptionBigtableConfig({
    required this.appProfileId,
    required this.columnFamilyMappings,
    required this.serviceAccountEmail,
    required this.state,
    required this.table,
    required this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': appProfileId,
      'columnFamilyMappings': pulumi.Input.mapInputValue<List<GetSubscriptionBigtableConfigColumnFamilyMapping>, List<Map<String, dynamic>>>(columnFamilyMappings, (value) => pulumi.Input.encodeList<GetSubscriptionBigtableConfigColumnFamilyMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountEmail': serviceAccountEmail,
      'state': state,
      'table': table,
      'writeMetadata': writeMetadata,
    };
  }

  factory GetSubscriptionBigtableConfig.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionBigtableConfig(
      appProfileId: pulumi.Input.fromValue(map['appProfileId'] as String),
      columnFamilyMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSubscriptionBigtableConfigColumnFamilyMapping>(map['columnFamilyMappings']!, (value) => GetSubscriptionBigtableConfigColumnFamilyMapping.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      table: pulumi.Input.fromValue(map['table'] as String),
      writeMetadata: pulumi.Input.fromValue(map['writeMetadata'] as bool),
    );
  }
}
