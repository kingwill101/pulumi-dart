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
      filter: map['filter'] == null ? null : (BlobInventoryPolicyRuleFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      format: (map['format'] as String).input(),
      name: (map['name'] as String).input(),
      schedule: (map['schedule'] as String).input(),
      schemaFields: ((map['schemaFields'] as List).cast<String>()).input(),
      scope: (map['scope'] as String).input(),
      storageContainerName: (map['storageContainerName'] as String).input(),
    );
  }
}

