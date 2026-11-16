// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_providers_filter.dart';
import 'get_action_gateway_providers_provider.dart';
import 'get_action_gateway_providers_sort.dart';

/// Result data returned by getActionGatewayProviders.
class GetActionGatewayProvidersResult {
  final List<GetActionGatewayProvidersFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of tool providers satisfying any `filter` and `sort` criteria. Each provider has the following attributes:
  final List<GetActionGatewayProvidersProvider>? providers;
  final List<GetActionGatewayProvidersSort>? sorts;

  /// Creates a new [GetActionGatewayProvidersResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [providers] A list of tool providers satisfying any `filter` and `sort` criteria. Each provider has the following attributes:
  /// [sorts] Optional.
  const GetActionGatewayProvidersResult({
    this.filters,
    this.id,
    this.providers,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGatewayProvidersFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'providers': ?(() { final guardedValue = providers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGatewayProvidersProvider, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGatewayProvidersSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetActionGatewayProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayProvidersResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGatewayProvidersFilter>(guardedValue, (value) => GetActionGatewayProvidersFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGatewayProvidersProvider>(guardedValue, (value) => GetActionGatewayProvidersProvider.fromMap((value as Map).cast<String, dynamic>())); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGatewayProvidersSort>(guardedValue, (value) => GetActionGatewayProvidersSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
