// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Publication resources.
class PublicationState {
  /// Should be ALL TABLES added to the publication. Defaults to 'false'
  final pulumi.Input<bool>? allTables;
  /// Which database to create the publication on. Defaults to provider database.
  final pulumi.Input<String>? database;
  /// Should all subsequent resources of the publication be dropped. Defaults to 'false'
  final pulumi.Input<bool>? dropCascade;
  /// The name of the publication.
  final pulumi.Input<String>? name;
  /// Who owns the publication. Defaults to provider user.
  final pulumi.Input<String>? owner;
  /// Which 'publish' options should be turned on. Default to 'insert','update','delete'
  final pulumi.Input<List<String>>? publishParams;
  /// Should be option 'publish_via_partition_root' be turned on. Default to 'false'
  final pulumi.Input<bool>? publishViaPartitionRootParam;
  /// Which tables add to the publication. By defaults no tables added. Format of table is `<schema_name>.<table_name>`. If `<schema_name>` is not specified - default database schema will be used.  Table string must be listed in alphabetical order.
  final pulumi.Input<List<String>>? tables;

  /// Creates a new [PublicationState].
  /// [allTables] Should be ALL TABLES added to the publication. Defaults to 'false'
  /// [database] Which database to create the publication on. Defaults to provider database.
  /// [dropCascade] Should all subsequent resources of the publication be dropped. Defaults to 'false'
  /// [name] The name of the publication.
  /// [owner] Who owns the publication. Defaults to provider user.
  /// [publishParams] Which 'publish' options should be turned on. Default to 'insert','update','delete'
  /// [publishViaPartitionRootParam] Should be option 'publish_via_partition_root' be turned on. Default to 'false'
  /// [tables] Which tables add to the publication. By defaults no tables added. Format of table is `<schema_name>.<table_name>`. If `<schema_name>` is not specified - default database schema will be used.  Table string must be listed in alphabetical order.
  PublicationState({
    this.allTables,
    this.database,
    this.dropCascade,
    this.name,
    this.owner,
    this.publishParams,
    this.publishViaPartitionRootParam,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTables': ?allTables,
      'database': ?database,
      'dropCascade': ?dropCascade,
      'name': ?name,
      'owner': ?owner,
      'publishParams': ?publishParams,
      'publishViaPartitionRootParam': ?publishViaPartitionRootParam,
      'tables': ?tables,
    };
  }

  factory PublicationState.fromMap(Map<String, dynamic> map) {
    return PublicationState(
      allTables: map['allTables'] == null ? null : (map['allTables'] as bool).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      dropCascade: map['dropCascade'] == null ? null : (map['dropCascade'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      publishParams: map['publishParams'] == null ? null : ((map['publishParams'] as List).cast<String>()).input(),
      publishViaPartitionRootParam: map['publishViaPartitionRootParam'] == null ? null : (map['publishViaPartitionRootParam'] as bool).input(),
      tables: map['tables'] == null ? null : ((map['tables'] as List).cast<String>()).input(),
    );
  }
}

