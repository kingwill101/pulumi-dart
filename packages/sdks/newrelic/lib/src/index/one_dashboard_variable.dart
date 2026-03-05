// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_variable_item.dart';
import 'one_dashboard_variable_nrql_query.dart';
import 'one_dashboard_variable_option.dart';

class OneDashboardVariable {
  /// (Optional) A list of default values for this variable. To select **all** default values, the appropriate value to be used with this argument would be `["*"]`.
  final pulumi.Input<List<String>>? defaultValues;
  /// (Optional) Indicates whether this variable supports multiple selection or not. Only applies to variables of type `nrql` or `enum`.
  final pulumi.Input<bool>? isMultiSelection;
  /// (Optional) List of possible values for variables of type `enum`. See Nested item blocks below for details.
  final pulumi.Input<List<OneDashboardVariableItem>>? items;
  /// The title of the dashboard.
  final pulumi.Input<String> name;
  /// (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  final pulumi.Input<OneDashboardVariableNrqlQuery>? nrqlQuery;
  /// (Optional) Specifies additional options to be added to dashboard variables. Supports the following nested attribute(s) -
  final pulumi.Input<List<OneDashboardVariableOption>>? options;
  /// (Optional) Indicates the strategy to apply when replacing a variable in a NRQL query. One of `default`, `identifier`, `number` or `string`.
  final pulumi.Input<String> replacementStrategy;
  /// (Optional) A human-friendly display string for this value.
  final pulumi.Input<String> title;
  /// (Required) Specifies the data type of the variable and where its possible values may come from. One of `enum`, `nrql` or `string`
  final pulumi.Input<String> type;

  /// Creates a new [OneDashboardVariable].
  /// [defaultValues] (Optional) A list of default values for this variable. To select **all** default values, the appropriate value to be used with this argument would be `["*"]`.
  /// [isMultiSelection] (Optional) Indicates whether this variable supports multiple selection or not. Only applies to variables of type `nrql` or `enum`.
  /// [items] (Optional) List of possible values for variables of type `enum`. See Nested item blocks below for details.
  /// [name] The title of the dashboard.
  /// [nrqlQuery] (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  /// [options] (Optional) Specifies additional options to be added to dashboard variables. Supports the following nested attribute(s) -
  /// [replacementStrategy] (Optional) Indicates the strategy to apply when replacing a variable in a NRQL query. One of `default`, `identifier`, `number` or `string`.
  /// [title] (Optional) A human-friendly display string for this value.
  /// [type] (Required) Specifies the data type of the variable and where its possible values may come from. One of `enum`, `nrql` or `string`
  OneDashboardVariable({
    this.defaultValues,
    this.isMultiSelection,
    this.items,
    required this.name,
    this.nrqlQuery,
    this.options,
    required this.replacementStrategy,
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValues': ?defaultValues,
      'isMultiSelection': ?isMultiSelection,
      'items': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardVariableItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<OneDashboardVariableItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'nrqlQuery': ?pulumi.Input.mapOptionalInputValue<OneDashboardVariableNrqlQuery, Map<String, dynamic>>(nrqlQuery, (value) => value.toMap()),
      'options': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardVariableOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<OneDashboardVariableOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replacementStrategy': replacementStrategy,
      'title': title,
      'type': type,
    };
  }

  factory OneDashboardVariable.fromMap(Map<String, dynamic> map) {
    return OneDashboardVariable(
      defaultValues: (() { final guardedValue = map['defaultValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isMultiSelection: (() { final guardedValue = map['isMultiSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardVariableItem>(guardedValue, (value) => OneDashboardVariableItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nrqlQuery: (() { final guardedValue = map['nrqlQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OneDashboardVariableNrqlQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardVariableOption>(guardedValue, (value) => OneDashboardVariableOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      replacementStrategy: pulumi.Input.fromValue(map['replacementStrategy'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

