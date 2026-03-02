// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_scripts_filter.dart';

/// {@template pulumi_index_get_stack_scripts_get_stack_scripts_args_doc}
/// Arguments for getStackScripts.
/// {@endtemplate}
/// {@macro pulumi_index_get_stack_scripts_get_stack_scripts_args_doc}
class GetStackScriptsArgs {
  final pulumi.Input<List<GetStackScriptsFilter>>? filters;
  /// If true, only the latest StackScript will be returned. StackScripts without a valid `created` field are not included in the result.
  ///
  /// * `filter` - (Optional) A set of filters used to select Linode StackScripts that meet certain requirements.
  final pulumi.Input<bool>? latest;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetStackScriptsArgs].
  /// [filters] Optional.
  /// [latest] If true, only the latest StackScript will be returned. StackScripts without a valid `created` field are not included in the result.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetStackScriptsArgs({
    this.filters,
    this.latest,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetStackScriptsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetStackScriptsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetStackScriptsArgs.fromMap(Map<String, dynamic> map) {
    return GetStackScriptsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetStackScriptsFilter>(map['filters']!, (value) => GetStackScriptsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      latest: map['latest'] == null ? null : (map['latest']! as bool).input(),
      order: map['order'] == null ? null : (map['order']! as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy']! as String).input(),
    );
  }
}

