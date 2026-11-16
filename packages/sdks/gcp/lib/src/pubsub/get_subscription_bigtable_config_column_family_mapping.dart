// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_bigtable_config_column_family_mapping_delimited_key.dart';

class GetSubscriptionBigtableConfigColumnFamilyMapping {
  /// If set, the row key is constructed from the given key fields and delimiter. All key fields
  /// must be present in the message; otherwise, the message remains in the subscription backlog.
  final pulumi.Input<List<GetSubscriptionBigtableConfigColumnFamilyMappingDelimitedKey>> delimitedKeys;
  /// If set, the row key is constructed from the field names of the table's
  /// [structured row key](https://cloud.google.com/bigtable/docs/manage-row-key-schemas).
  /// If a field is nullable in the structured row key, it need not be present in the message;
  /// null will be used instead.
  final pulumi.Input<List<Map<String, dynamic>>> rowKeySchemas;

  /// Creates a new [GetSubscriptionBigtableConfigColumnFamilyMapping].
  /// [delimitedKeys] If set, the row key is constructed from the given key fields and delimiter. All key fields
  /// [rowKeySchemas] If set, the row key is constructed from the field names of the table's
  const GetSubscriptionBigtableConfigColumnFamilyMapping({
    required this.delimitedKeys,
    required this.rowKeySchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimitedKeys': pulumi.Input.mapInputValue<List<GetSubscriptionBigtableConfigColumnFamilyMappingDelimitedKey>, List<Map<String, dynamic>>>(delimitedKeys, (value) => pulumi.Input.encodeList<GetSubscriptionBigtableConfigColumnFamilyMappingDelimitedKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowKeySchemas': rowKeySchemas,
    };
  }

  factory GetSubscriptionBigtableConfigColumnFamilyMapping.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionBigtableConfigColumnFamilyMapping(
      delimitedKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSubscriptionBigtableConfigColumnFamilyMappingDelimitedKey>(map['delimitedKeys']!, (value) => GetSubscriptionBigtableConfigColumnFamilyMappingDelimitedKey.fromMap((value as Map).cast<String, dynamic>()))),
      rowKeySchemas: pulumi.Input.fromValue((map['rowKeySchemas'] as List).cast<Map<String, dynamic>>()),
    );
  }
}
