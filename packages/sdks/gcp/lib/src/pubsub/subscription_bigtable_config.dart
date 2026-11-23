// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_bigtable_config_column_family_mapping.dart';

class SubscriptionBigtableConfig {
  /// The app profile to use for the Bigtable writes. If not specified, the "default" application
  /// profile will be used. The app profile must use single-cluster routing.
  final pulumi.Input<String?>? appProfileId;
  /// Configuration that allows writing row keys and/or columns based on fields in the input message.
  /// The input message format must be JSON if this field is set.
  /// If this field is set, top-level message fields are written to the `data` column family with
  /// the field name as the column qualifier by default, or to an existing column family whose name
  /// matches the field name. The cell timestamp is the message publish time.
  /// If this field is not set, the row key is constructed from the subscription name, message ID hash,
  /// and message ID delimited by `#`, and the message bytes are written to the `data` column family
  /// with an empty-string column qualifier.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionBigtableConfigColumnFamilyMapping?>? columnFamilyMapping;
  /// The service account to use to write to Bigtable. The subscription creator or updater that
  /// specifies this field must have `iam.serviceAccounts.actAs` permission on the service account.
  /// If not specified, the Pub/Sub [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final pulumi.Input<String?>? serviceAccountEmail;
  /// (Output)
  /// An output-only field that indicates whether or not the subscription can receive messages.
  final pulumi.Input<String?>? state;
  /// The unique name of the table to write messages to, of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
  final pulumi.Input<String> table;
  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to
  /// additional columns in the table under the `pubsubMetadata` column family. The subscription name,
  /// messageId, and publishTime fields are put in their own columns while all other message properties
  /// (other than data) are written to a JSON object in the attributes column.
  final pulumi.Input<bool?>? writeMetadata;

  /// Creates a new [SubscriptionBigtableConfig].
  /// [appProfileId] The app profile to use for the Bigtable writes. If not specified, the "default" application
  /// [columnFamilyMapping] Configuration that allows writing row keys and/or columns based on fields in the input message.
  /// [serviceAccountEmail] The service account to use to write to Bigtable. The subscription creator or updater that
  /// [state] (Output)
  /// [table] The unique name of the table to write messages to, of the form
  /// [writeMetadata] When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to
  const SubscriptionBigtableConfig({
    this.appProfileId,
    this.columnFamilyMapping,
    this.serviceAccountEmail,
    this.state,
    required this.table,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': ?appProfileId,
      'columnFamilyMapping': ?pulumi.Input.mapOptionalInputValue<SubscriptionBigtableConfigColumnFamilyMapping, Map<String, dynamic>>(columnFamilyMapping, (value) => value.toMap()),
      'serviceAccountEmail': ?serviceAccountEmail,
      'state': ?state,
      'table': table,
      'writeMetadata': ?writeMetadata,
    };
  }

  factory SubscriptionBigtableConfig.fromMap(Map<String, dynamic> map) {
    return SubscriptionBigtableConfig(
      appProfileId: (() { final guardedValue = map['appProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      columnFamilyMapping: (() { final guardedValue = map['columnFamilyMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionBigtableConfigColumnFamilyMapping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
      writeMetadata: (() { final guardedValue = map['writeMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
