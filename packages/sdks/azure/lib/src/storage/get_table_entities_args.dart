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
    required pulumi.Output<String> filter,
    pulumi.Output<List<String>>? selects,
    required pulumi.Output<String> storageTableId,
  }) :
      filter = pulumi.Input.asInput<String>(filter),
      selects = pulumi.Input.asOptionalInput<List<String>>(selects),
      storageTableId = pulumi.Input.asInput<String>(storageTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'selects': ?selects,
      'storageTableId': storageTableId,
    };
  }

  factory GetTableEntitiesArgs.fromMap(Map<String, dynamic> map) {
    return GetTableEntitiesArgs(
      filter: pulumi.Output.create<String>(map['filter'] as String),
      selects: map['selects'] == null ? null : pulumi.Output.create<List<String>>((map['selects'] as List).cast<String>()),
      storageTableId: pulumi.Output.create<String>(map['storageTableId'] as String),
    );
  }
}

