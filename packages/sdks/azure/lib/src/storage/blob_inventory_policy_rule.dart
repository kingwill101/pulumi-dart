// ignore_for_file: unused_element, unnecessary_cast

import 'blob_inventory_policy_rule_filter.dart';

class BlobInventoryPolicyRule {
  /// A `filter` block as defined above.
  final BlobInventoryPolicyRuleFilter? filter;
  /// The format of the inventory files. Possible values are `Csv` and `Parquet`.
  final String format;
  /// The name which should be used for this Blob Inventory Policy Rule.
  final String name;
  /// The inventory schedule applied by this rule. Possible values are `Daily` and `Weekly`.
  final String schedule;
  /// A list of fields to be included in the inventory. See the [Azure API reference](https://docs.microsoft.com/rest/api/storagerp/blob-inventory-policies/create-or-update#blobinventorypolicydefinition) for all the supported fields.
  final List<String> schemaFields;
  /// The scope of the inventory for this rule. Possible values are `Blob` and `Container`.
  final String scope;
  /// The storage container name to store the blob inventory files for this rule.
  final String storageContainerName;

  /// Creates a new [BlobInventoryPolicyRule].
  /// [filter] A `filter` block as defined above.
  /// [format] The format of the inventory files. Possible values are `Csv` and `Parquet`.
  /// [name] The name which should be used for this Blob Inventory Policy Rule.
  /// [schedule] The inventory schedule applied by this rule. Possible values are `Daily` and `Weekly`.
  /// [schemaFields] A list of fields to be included in the inventory. See the [Azure API reference](https://docs.microsoft.com/rest/api/storagerp/blob-inventory-policies/create-or-update#blobinventorypolicydefinition) for all the supported fields.
  /// [scope] The scope of the inventory for this rule. Possible values are `Blob` and `Container`.
  /// [storageContainerName] The storage container name to store the blob inventory files for this rule.
  BlobInventoryPolicyRule({
    this.filter,
    required this.format,
    required this.name,
    required this.schedule,
    required this.schemaFields,
    required this.scope,
    required this.storageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter == null ? null : filter!.toMap(),
      'format': format,
      'name': name,
      'schedule': schedule,
      'schemaFields': schemaFields,
      'scope': scope,
      'storageContainerName': storageContainerName,
    };
  }

  factory BlobInventoryPolicyRule.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyRule(
      filter: map['filter'] == null ? null : BlobInventoryPolicyRuleFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      format: map['format'] as String,
      name: map['name'] as String,
      schedule: map['schedule'] as String,
      schemaFields: (map['schemaFields'] as List).cast<String>(),
      scope: map['scope'] as String,
      storageContainerName: map['storageContainerName'] as String,
    );
  }
}

