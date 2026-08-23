// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_partition_key.dart';
import 'hive_table_storage_descriptor.dart';

/// Input properties used for looking up and filtering HiveTable resources.
class HiveTableState {
  /// The Hive catalog where the table is located.
  final pulumi.Input<String>? catalog;
  /// Output only. The creation time of the table.
  final pulumi.Input<String>? createTime;
  /// The Hive database where the table is located.
  final pulumi.Input<String>? database;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the table.
  final pulumi.Input<String>? description;
  /// Output only. Last access time of the table.
  final pulumi.Input<String>? lastAccessTime;
  /// The name of the table.
  final pulumi.Input<String>? name;
  /// Additional parameters associated with the table.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Partition keys of the table.
  /// Structure is documented below.
  final pulumi.Input<List<HiveTablePartitionKey>>? partitionKeys;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Storage descriptor of the table.
  /// Structure is documented below.
  final pulumi.Input<HiveTableStorageDescriptor>? storageDescriptor;
  /// Output only. The type of the table.
  final pulumi.Input<String>? tableType;
  /// Output only. The update time of the table
  final pulumi.Input<String>? updateTime;
  /// Expanded view text for Hive views. Empty for non-view.
  final pulumi.Input<String>? viewExpandedText;
  /// Original view text for Hive views. Empty for non-view.
  final pulumi.Input<String>? viewOriginalText;

  /// Creates a new [HiveTableState].
  /// [catalog] The Hive catalog where the table is located.
  /// [createTime] Output only. The creation time of the table.
  /// [database] The Hive database where the table is located.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the table.
  /// [lastAccessTime] Output only. Last access time of the table.
  /// [name] The name of the table.
  /// [parameters] Additional parameters associated with the table.
  /// [partitionKeys] Partition keys of the table.
  /// [project] The ID of the project in which the resource belongs.
  /// [storageDescriptor] Storage descriptor of the table.
  /// [tableType] Output only. The type of the table.
  /// [updateTime] Output only. The update time of the table
  /// [viewExpandedText] Expanded view text for Hive views. Empty for non-view.
  /// [viewOriginalText] Original view text for Hive views. Empty for non-view.
  const HiveTableState({
    this.catalog,
    this.createTime,
    this.database,
    this.deletionPolicy,
    this.description,
    this.lastAccessTime,
    this.name,
    this.parameters,
    this.partitionKeys,
    this.project,
    this.storageDescriptor,
    this.tableType,
    this.updateTime,
    this.viewExpandedText,
    this.viewOriginalText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?catalog,
      'createTime': ?createTime,
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'lastAccessTime': ?lastAccessTime,
      'name': ?name,
      'parameters': ?parameters,
      'partitionKeys': ?pulumi.Input.mapOptionalInputValue<List<HiveTablePartitionKey>, List<Map<String, dynamic>>>(partitionKeys, (value) => pulumi.Input.encodeList<HiveTablePartitionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'storageDescriptor': ?pulumi.Input.mapOptionalInputValue<HiveTableStorageDescriptor, Map<String, dynamic>>(storageDescriptor, (value) => value.toMap()),
      'tableType': ?tableType,
      'updateTime': ?updateTime,
      'viewExpandedText': ?viewExpandedText,
      'viewOriginalText': ?viewOriginalText,
    };
  }

  factory HiveTableState.fromMap(Map<String, dynamic> map) {
    return HiveTableState(
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastAccessTime: (() { final guardedValue = map['lastAccessTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      partitionKeys: (() { final guardedValue = map['partitionKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HiveTablePartitionKey>(guardedValue, (value) => HiveTablePartitionKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageDescriptor: (() { final guardedValue = map['storageDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HiveTableStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableType: (() { final guardedValue = map['tableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewExpandedText: (() { final guardedValue = map['viewExpandedText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewOriginalText: (() { final guardedValue = map['viewOriginalText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
