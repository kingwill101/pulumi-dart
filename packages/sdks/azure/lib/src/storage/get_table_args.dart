// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_table_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_storage_get_table_get_table_args_doc}
class GetTableArgs {
  /// The name of the Table.
  final pulumi.Input<String> name;
  /// The ID of the Storage Account where the Table exists.
  final pulumi.Input<String?>? storageAccountId;
  /// The name of the Storage Account where the Table exists.
  ///
  /// &gt; **Note:** This property is deprecated in favour of `storageAccountId` and will be removed in version 5.0 of the AzureRM Provider.
  final pulumi.Input<String?>? storageAccountName;

  /// Creates a new [GetTableArgs].
  /// [name] The name of the Table.
  /// [storageAccountId] The ID of the Storage Account where the Table exists.
  /// [storageAccountName] The name of the Storage Account where the Table exists.
  const GetTableArgs({
    required this.name,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
