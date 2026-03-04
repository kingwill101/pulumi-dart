// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_table_entities_get_table_entities_args_doc}
/// Arguments for getTableEntities.
/// {@endtemplate}
/// {@macro pulumi_storage_get_table_entities_get_table_entities_args_doc}
class GetTableEntitiesArgs {
  /// The filter used to retrieve the entities.
  final pulumi.Input<String> filter;

  /// A list of properties to select from the returned Storage Table Entities.
  final pulumi.Input<List<String>>? selects;

  /// The Storage Table ID where the entities exist.
  final pulumi.Input<String> storageTableId;

  /// Creates a new [GetTableEntitiesArgs].
  /// [filter] The filter used to retrieve the entities.
  /// [selects] A list of properties to select from the returned Storage Table Entities.
  /// [storageTableId] The Storage Table ID where the entities exist.
  GetTableEntitiesArgs({
    required this.filter,
    this.selects,
    required this.storageTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'selects': ?selects,
      'storageTableId': storageTableId,
    };
  }

  factory GetTableEntitiesArgs.fromMap(Map<String, dynamic> map) {
    return GetTableEntitiesArgs(
      filter: pulumi.Input.fromValue(map['filter'] as String),
      selects: (() {
        final guardedValue = map['selects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      storageTableId: pulumi.Input.fromValue(map['storageTableId'] as String),
    );
  }
}
