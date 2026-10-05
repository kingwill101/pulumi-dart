// ignore_for_file: unused_element, unnecessary_cast

import 'conditional_column_set_value_response.dart';
import 'convert_row_id_to_column_response.dart';
import 'entity_move_response.dart';
import 'filter_table_columns_response.dart';
import 'mapping_rule_filter_response.dart';
import 'multi_column_datatype_change_response.dart';
import 'multi_entity_rename_response.dart';
import 'set_table_primary_key_response.dart';
import 'single_column_change_response.dart';
import 'single_entity_rename_response.dart';
import 'single_package_change_response.dart';
import 'source_sql_change_response.dart';

/// Result data returned by getMappingRule.
class GetMappingRuleResult {
  /// Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  final ConditionalColumnSetValueResponse? conditionalColumnSetValue;
  /// Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  final ConvertRowIdToColumnResponse? convertRowidColumn;
  /// Optional. A human readable name
  final String? displayName;
  /// Optional. Rule to specify how multiple entities should be relocated into a different schema.
  final EntityMoveResponse? entityMove;
  /// The rule filter
  final MappingRuleFilterResponse? filter;
  /// Optional. Rule to specify the list of columns to include or exclude from a table.
  final FilterTableColumnsResponse? filterTableColumns;
  /// Optional. Rule to specify how multiple columns should be converted to a different data type.
  final MultiColumnDatatypeChangeResponse? multiColumnDataTypeChange;
  /// Optional. Rule to specify how multiple entities should be renamed.
  final MultiEntityRenameResponse? multiEntityRename;
  /// Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  final String? name;
  /// The timestamp that the revision was created.
  final String? revisionCreateTime;
  /// The revision ID of the mapping rule. A new revision is committed whenever the mapping rule is changed in any way. The format is an 8-character hexadecimal string.
  final String? revisionId;
  /// The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  final String? ruleOrder;
  /// The rule scope
  final String? ruleScope;
  /// Optional. Rule to specify the primary key for a table
  final SetTablePrimaryKeyResponse? setTablePrimaryKey;
  /// Optional. Rule to specify how a single column is converted.
  final SingleColumnChangeResponse? singleColumnChange;
  /// Optional. Rule to specify how a single entity should be renamed.
  final SingleEntityRenameResponse? singleEntityRename;
  /// Optional. Rule to specify how a single package is converted.
  final SinglePackageChangeResponse? singlePackageChange;
  /// Optional. Rule to change the sql code for an entity, for example, function, procedure.
  final SourceSqlChangeResponse? sourceSqlChange;
  /// Optional. The mapping rule state
  final String? state;

  /// Creates a new [GetMappingRuleResult].
  /// [conditionalColumnSetValue] Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  /// [convertRowidColumn] Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  /// [displayName] Optional. A human readable name
  /// [entityMove] Optional. Rule to specify how multiple entities should be relocated into a different schema.
  /// [filter] The rule filter
  /// [filterTableColumns] Optional. Rule to specify the list of columns to include or exclude from a table.
  /// [multiColumnDataTypeChange] Optional. Rule to specify how multiple columns should be converted to a different data type.
  /// [multiEntityRename] Optional. Rule to specify how multiple entities should be renamed.
  /// [name] Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  /// [revisionCreateTime] The timestamp that the revision was created.
  /// [revisionId] The revision ID of the mapping rule. A new revision is committed whenever the mapping rule is changed in any way. The format is an 8-character hexadecimal string.
  /// [ruleOrder] The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  /// [ruleScope] The rule scope
  /// [setTablePrimaryKey] Optional. Rule to specify the primary key for a table
  /// [singleColumnChange] Optional. Rule to specify how a single column is converted.
  /// [singleEntityRename] Optional. Rule to specify how a single entity should be renamed.
  /// [singlePackageChange] Optional. Rule to specify how a single package is converted.
  /// [sourceSqlChange] Optional. Rule to change the sql code for an entity, for example, function, procedure.
  /// [state] Optional. The mapping rule state
  const GetMappingRuleResult({
    this.conditionalColumnSetValue,
    this.convertRowidColumn,
    this.displayName,
    this.entityMove,
    this.filter,
    this.filterTableColumns,
    this.multiColumnDataTypeChange,
    this.multiEntityRename,
    this.name,
    this.revisionCreateTime,
    this.revisionId,
    this.ruleOrder,
    this.ruleScope,
    this.setTablePrimaryKey,
    this.singleColumnChange,
    this.singleEntityRename,
    this.singlePackageChange,
    this.sourceSqlChange,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalColumnSetValue': ?conditionalColumnSetValue?.toMap(),
      'convertRowidColumn': ?convertRowidColumn?.toMap(),
      'displayName': ?displayName,
      'entityMove': ?entityMove?.toMap(),
      'filter': ?filter?.toMap(),
      'filterTableColumns': ?filterTableColumns?.toMap(),
      'multiColumnDataTypeChange': ?multiColumnDataTypeChange?.toMap(),
      'multiEntityRename': ?multiEntityRename?.toMap(),
      'name': ?name,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'ruleOrder': ?ruleOrder,
      'ruleScope': ?ruleScope,
      'setTablePrimaryKey': ?setTablePrimaryKey?.toMap(),
      'singleColumnChange': ?singleColumnChange?.toMap(),
      'singleEntityRename': ?singleEntityRename?.toMap(),
      'singlePackageChange': ?singlePackageChange?.toMap(),
      'sourceSqlChange': ?sourceSqlChange?.toMap(),
      'state': ?state,
    };
  }

  factory GetMappingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetMappingRuleResult(
      conditionalColumnSetValue: (() { final guardedValue = map['conditionalColumnSetValue']; if (guardedValue == null) return null; return ConditionalColumnSetValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      convertRowidColumn: (() { final guardedValue = map['convertRowidColumn']; if (guardedValue == null) return null; return ConvertRowIdToColumnResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityMove: (() { final guardedValue = map['entityMove']; if (guardedValue == null) return null; return EntityMoveResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return MappingRuleFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filterTableColumns: (() { final guardedValue = map['filterTableColumns']; if (guardedValue == null) return null; return FilterTableColumnsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      multiColumnDataTypeChange: (() { final guardedValue = map['multiColumnDataTypeChange']; if (guardedValue == null) return null; return MultiColumnDatatypeChangeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      multiEntityRename: (() { final guardedValue = map['multiEntityRename']; if (guardedValue == null) return null; return MultiEntityRenameResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleOrder: (() { final guardedValue = map['ruleOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleScope: (() { final guardedValue = map['ruleScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      setTablePrimaryKey: (() { final guardedValue = map['setTablePrimaryKey']; if (guardedValue == null) return null; return SetTablePrimaryKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      singleColumnChange: (() { final guardedValue = map['singleColumnChange']; if (guardedValue == null) return null; return SingleColumnChangeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      singleEntityRename: (() { final guardedValue = map['singleEntityRename']; if (guardedValue == null) return null; return SingleEntityRenameResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      singlePackageChange: (() { final guardedValue = map['singlePackageChange']; if (guardedValue == null) return null; return SinglePackageChangeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceSqlChange: (() { final guardedValue = map['sourceSqlChange']; if (guardedValue == null) return null; return SourceSqlChangeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
