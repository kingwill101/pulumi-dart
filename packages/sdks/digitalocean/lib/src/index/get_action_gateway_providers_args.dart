// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_providers_filter.dart';
import 'get_action_gateway_providers_sort.dart';

/// {@template pulumi_index_get_action_gateway_providers_get_action_gateway_providers_args_doc}
/// Arguments for getActionGatewayProviders.
/// {@endtemplate}
/// {@macro pulumi_index_get_action_gateway_providers_get_action_gateway_providers_args_doc}
class GetActionGatewayProvidersArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetActionGatewayProvidersFilter>?>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetActionGatewayProvidersSort>?>? sorts;

  /// Creates a new [GetActionGatewayProvidersArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  const GetActionGatewayProvidersArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetActionGatewayProvidersFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetActionGatewayProvidersFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetActionGatewayProvidersSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetActionGatewayProvidersSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetActionGatewayProvidersArgs.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayProvidersArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGatewayProvidersFilter>(guardedValue, (value) => GetActionGatewayProvidersFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGatewayProvidersSort>(guardedValue, (value) => GetActionGatewayProvidersSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
