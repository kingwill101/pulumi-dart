// ignore_for_file: unused_element, unnecessary_cast

import 'action_response.dart';
import 'correlation_filter_response.dart';
import 'sql_filter_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRule.
class GetRuleResult {
  /// Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
  final ActionResponse? action;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Properties of correlationFilter
  final CorrelationFilterResponse? correlationFilter;

  /// Filter type that is evaluated against a BrokeredMessage.
  final String? filterType;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// Properties of sqlFilter
  final SqlFilterResponse? sqlFilter;

  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;

  /// Creates a new [GetRuleResult].
  /// [action] Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [correlationFilter] Properties of correlationFilter
  /// [filterType] Filter type that is evaluated against a BrokeredMessage.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [sqlFilter] Properties of sqlFilter
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  GetRuleResult({
    this.action,
    required this.azureApiVersion,
    this.correlationFilter,
    this.filterType,
    required this.id,
    required this.location,
    required this.name,
    this.sqlFilter,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action?.toMap(),
      'azureApiVersion': azureApiVersion,
      'correlationFilter': ?correlationFilter?.toMap(),
      'filterType': ?filterType,
      'id': id,
      'location': location,
      'name': name,
      'sqlFilter': ?sqlFilter?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRuleResult(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return ActionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      correlationFilter: (() {
        final guardedValue = map['correlationFilter'];
        if (guardedValue == null) return null;
        return CorrelationFilterResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      filterType: (() {
        final guardedValue = map['filterType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      sqlFilter: (() {
        final guardedValue = map['sqlFilter'];
        if (guardedValue == null) return null;
        return SqlFilterResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
