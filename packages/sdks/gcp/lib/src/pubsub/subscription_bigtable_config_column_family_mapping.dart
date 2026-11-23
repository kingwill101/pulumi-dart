// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_bigtable_config_column_family_mapping_delimited_key.dart';

class SubscriptionBigtableConfigColumnFamilyMapping {
  /// If set, the row key is constructed from the given key fields and delimiter. All key fields
  /// must be present in the message; otherwise, the message remains in the subscription backlog.
  /// Structure is documented below.
  final pulumi.Input<SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey?>? delimitedKey;
  /// If set, the row key is constructed from the field names of the table's
  /// [structured row key](https://cloud.google.com/bigtable/docs/manage-row-key-schemas).
  /// If a field is nullable in the structured row key, it need not be present in the message;
  /// null will be used instead.
  final pulumi.Input<Map<String, dynamic>?>? rowKeySchema;

  /// Creates a new [SubscriptionBigtableConfigColumnFamilyMapping].
  /// [delimitedKey] If set, the row key is constructed from the given key fields and delimiter. All key fields
  /// [rowKeySchema] If set, the row key is constructed from the field names of the table's
  const SubscriptionBigtableConfigColumnFamilyMapping({
    this.delimitedKey,
    this.rowKeySchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimitedKey': ?pulumi.Input.mapOptionalInputValue<SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey, Map<String, dynamic>>(delimitedKey, (value) => value.toMap()),
      'rowKeySchema': ?rowKeySchema,
    };
  }

  factory SubscriptionBigtableConfigColumnFamilyMapping.fromMap(Map<String, dynamic> map) {
    return SubscriptionBigtableConfigColumnFamilyMapping(
      delimitedKey: (() { final guardedValue = map['delimitedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionBigtableConfigColumnFamilyMappingDelimitedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rowKeySchema: (() { final guardedValue = map['rowKeySchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
