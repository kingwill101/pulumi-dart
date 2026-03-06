// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_rule_filter.dart';

class BlobInventoryPolicyRule {
  /// A `filter` block as defined above.
  final pulumi.Input<BlobInventoryPolicyRuleFilter>? filter;
  /// The format of the inventory files. Possible values are `Csv` and `Parquet`.
  final pulumi.Input<String> format;
  /// The name which should be used for this Blob Inventory Policy Rule.
  final pulumi.Input<String> name;
  /// The inventory schedule applied by this rule. Possible values are `Daily` and `Weekly`.
  final pulumi.Input<String> schedule;
  /// A list of fields to be included in the inventory. See the [Azure API reference](https://docs.microsoft.com/rest/api/storagerp/blob-inventory-policies/create-or-update#blobinventorypolicydefinition) for all the supported fields.
  final pulumi.Input<List<String>> schemaFields;
  /// The scope of the inventory for this rule. Possible values are `Blob` and `Container`.
  final pulumi.Input<String> scope;
  /// The storage container name to store the blob inventory files for this rule.
  final pulumi.Input<String> storageContainerName;

  /// Creates a new [BlobInventoryPolicyRule].
  /// [filter] A `filter` block as defined above.
  /// [format] The format of the inventory files. Possible values are `Csv` and `Parquet`.
  /// [name] The name which should be used for this Blob Inventory Policy Rule.
  /// [schedule] The inventory schedule applied by this rule. Possible values are `Daily` and `Weekly`.
  /// [schemaFields] A list of fields to be included in the inventory. See the [Azure API reference](https://docs.microsoft.com/rest/api/storagerp/blob-inventory-policies/create-or-update#blobinventorypolicydefinition) for all the supported fields.
  /// [scope] The scope of the inventory for this rule. Possible values are `Blob` and `Container`.
  /// [storageContainerName] The storage container name to store the blob inventory files for this rule.
  const BlobInventoryPolicyRule({
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
      'filter': ?pulumi.Input.mapOptionalInputValue<BlobInventoryPolicyRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
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
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlobInventoryPolicyRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      schemaFields: pulumi.Input.fromValue((map['schemaFields'] as List).cast<String>()),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      storageContainerName: pulumi.Input.fromValue(map['storageContainerName'] as String),
    );
  }
}

