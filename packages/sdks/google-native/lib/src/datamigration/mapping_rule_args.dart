// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_column_set_value.dart';
import 'convert_row_id_to_column.dart';
import 'entity_move.dart';
import 'filter_table_columns.dart';
import 'mapping_rule_filter.dart';
import 'mapping_rule_rule_scope.dart';
import 'mapping_rule_state.dart';
import 'multi_column_datatype_change.dart';
import 'multi_entity_rename.dart';
import 'set_table_primary_key.dart';
import 'single_column_change.dart';
import 'single_entity_rename.dart';
import 'single_package_change.dart';
import 'source_sql_change.dart';

/// {@template pulumi_datamigration_v1_mapping_rule_args_doc}
/// The set of arguments for MappingRule.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_mapping_rule_args_doc}
class MappingRuleArgs {
  /// Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  final pulumi.Input<ConditionalColumnSetValue>? conditionalColumnSetValue;
  final pulumi.Input<String> conversionWorkspaceId;
  /// Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  final pulumi.Input<ConvertRowIdToColumn>? convertRowidColumn;
  /// Optional. A human readable name
  final pulumi.Input<String>? displayName;
  /// Optional. Rule to specify how multiple entities should be relocated into a different schema.
  final pulumi.Input<EntityMove>? entityMove;
  /// The rule filter
  final pulumi.Input<MappingRuleFilter> filter;
  /// Optional. Rule to specify the list of columns to include or exclude from a table.
  final pulumi.Input<FilterTableColumns>? filterTableColumns;
  final pulumi.Input<String>? location;
  /// Required. The ID of the rule to create.
  final pulumi.Input<String> mappingRuleId;
  /// Optional. Rule to specify how multiple columns should be converted to a different data type.
  final pulumi.Input<MultiColumnDatatypeChange>? multiColumnDataTypeChange;
  /// Optional. Rule to specify how multiple entities should be renamed.
  final pulumi.Input<MultiEntityRename>? multiEntityRename;
  /// Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  final pulumi.Input<String> ruleOrder;
  /// The rule scope
  final pulumi.Input<MappingRuleRuleScope> ruleScope;
  /// Optional. Rule to specify the primary key for a table
  final pulumi.Input<SetTablePrimaryKey>? setTablePrimaryKey;
  /// Optional. Rule to specify how a single column is converted.
  final pulumi.Input<SingleColumnChange>? singleColumnChange;
  /// Optional. Rule to specify how a single entity should be renamed.
  final pulumi.Input<SingleEntityRename>? singleEntityRename;
  /// Optional. Rule to specify how a single package is converted.
  final pulumi.Input<SinglePackageChange>? singlePackageChange;
  /// Optional. Rule to change the sql code for an entity, for example, function, procedure.
  final pulumi.Input<SourceSqlChange>? sourceSqlChange;
  /// Optional. The mapping rule state
  final pulumi.Input<MappingRuleState>? state;

  /// Creates a new [MappingRuleArgs].
  /// [conditionalColumnSetValue] Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  /// [conversionWorkspaceId] Required.
  /// [convertRowidColumn] Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  /// [displayName] Optional. A human readable name
  /// [entityMove] Optional. Rule to specify how multiple entities should be relocated into a different schema.
  /// [filter] The rule filter
  /// [filterTableColumns] Optional. Rule to specify the list of columns to include or exclude from a table.
  /// [location] Optional.
  /// [mappingRuleId] Required. The ID of the rule to create.
  /// [multiColumnDataTypeChange] Optional. Rule to specify how multiple columns should be converted to a different data type.
  /// [multiEntityRename] Optional. Rule to specify how multiple entities should be renamed.
  /// [name] Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  /// [project] Optional.
  /// [requestId] A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [ruleOrder] The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  /// [ruleScope] The rule scope
  /// [setTablePrimaryKey] Optional. Rule to specify the primary key for a table
  /// [singleColumnChange] Optional. Rule to specify how a single column is converted.
  /// [singleEntityRename] Optional. Rule to specify how a single entity should be renamed.
  /// [singlePackageChange] Optional. Rule to specify how a single package is converted.
  /// [sourceSqlChange] Optional. Rule to change the sql code for an entity, for example, function, procedure.
  /// [state] Optional. The mapping rule state
  const MappingRuleArgs({
    this.conditionalColumnSetValue,
    required this.conversionWorkspaceId,
    this.convertRowidColumn,
    this.displayName,
    this.entityMove,
    required this.filter,
    this.filterTableColumns,
    this.location,
    required this.mappingRuleId,
    this.multiColumnDataTypeChange,
    this.multiEntityRename,
    this.name,
    this.project,
    this.requestId,
    required this.ruleOrder,
    required this.ruleScope,
    this.setTablePrimaryKey,
    this.singleColumnChange,
    this.singleEntityRename,
    this.singlePackageChange,
    this.sourceSqlChange,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalColumnSetValue': ?pulumi.Input.mapOptionalInputValue<ConditionalColumnSetValue, Map<String, dynamic>>(conditionalColumnSetValue, (value) => value.toMap()),
      'conversionWorkspaceId': conversionWorkspaceId,
      'convertRowidColumn': ?pulumi.Input.mapOptionalInputValue<ConvertRowIdToColumn, Map<String, dynamic>>(convertRowidColumn, (value) => value.toMap()),
      'displayName': ?displayName,
      'entityMove': ?pulumi.Input.mapOptionalInputValue<EntityMove, Map<String, dynamic>>(entityMove, (value) => value.toMap()),
      'filter': pulumi.Input.mapInputValue<MappingRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'filterTableColumns': ?pulumi.Input.mapOptionalInputValue<FilterTableColumns, Map<String, dynamic>>(filterTableColumns, (value) => value.toMap()),
      'location': ?location,
      'mappingRuleId': mappingRuleId,
      'multiColumnDataTypeChange': ?pulumi.Input.mapOptionalInputValue<MultiColumnDatatypeChange, Map<String, dynamic>>(multiColumnDataTypeChange, (value) => value.toMap()),
      'multiEntityRename': ?pulumi.Input.mapOptionalInputValue<MultiEntityRename, Map<String, dynamic>>(multiEntityRename, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'ruleOrder': ruleOrder,
      'ruleScope': pulumi.Input.mapInputValue<MappingRuleRuleScope, String>(ruleScope, (value) => value.wireValue),
      'setTablePrimaryKey': ?pulumi.Input.mapOptionalInputValue<SetTablePrimaryKey, Map<String, dynamic>>(setTablePrimaryKey, (value) => value.toMap()),
      'singleColumnChange': ?pulumi.Input.mapOptionalInputValue<SingleColumnChange, Map<String, dynamic>>(singleColumnChange, (value) => value.toMap()),
      'singleEntityRename': ?pulumi.Input.mapOptionalInputValue<SingleEntityRename, Map<String, dynamic>>(singleEntityRename, (value) => value.toMap()),
      'singlePackageChange': ?pulumi.Input.mapOptionalInputValue<SinglePackageChange, Map<String, dynamic>>(singlePackageChange, (value) => value.toMap()),
      'sourceSqlChange': ?pulumi.Input.mapOptionalInputValue<SourceSqlChange, Map<String, dynamic>>(sourceSqlChange, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<MappingRuleState, String>(state, (value) => value.wireValue),
    };
  }

  factory MappingRuleArgs.fromMap(Map<String, dynamic> map) {
    return MappingRuleArgs(
      conditionalColumnSetValue: (() { final guardedValue = map['conditionalColumnSetValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionalColumnSetValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conversionWorkspaceId: pulumi.Input.fromValue(map['conversionWorkspaceId'] as String),
      convertRowidColumn: (() { final guardedValue = map['convertRowidColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConvertRowIdToColumn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityMove: (() { final guardedValue = map['entityMove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityMove.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: pulumi.Input.fromValue(MappingRuleFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())),
      filterTableColumns: (() { final guardedValue = map['filterTableColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterTableColumns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mappingRuleId: pulumi.Input.fromValue(map['mappingRuleId'] as String),
      multiColumnDataTypeChange: (() { final guardedValue = map['multiColumnDataTypeChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiColumnDatatypeChange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiEntityRename: (() { final guardedValue = map['multiEntityRename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiEntityRename.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleOrder: pulumi.Input.fromValue(map['ruleOrder'] as String),
      ruleScope: pulumi.Input.fromValue(MappingRuleRuleScope.fromValue(map['ruleScope']! as String)),
      setTablePrimaryKey: (() { final guardedValue = map['setTablePrimaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SetTablePrimaryKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singleColumnChange: (() { final guardedValue = map['singleColumnChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SingleColumnChange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singleEntityRename: (() { final guardedValue = map['singleEntityRename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SingleEntityRename.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singlePackageChange: (() { final guardedValue = map['singlePackageChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SinglePackageChange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSqlChange: (() { final guardedValue = map['sourceSqlChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceSqlChange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MappingRuleState.fromValue(guardedValue as String)); })(),
    );
  }
}
