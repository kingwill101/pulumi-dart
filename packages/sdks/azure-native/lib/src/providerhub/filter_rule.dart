// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_information.dart';

class FilterRule {
  /// The endpoint information.
  final pulumi.Input<List<EndpointInformation>>? endpointInformation;
  /// The filter query.
  final pulumi.Input<String>? filterQuery;

  /// Creates a new [FilterRule].
  /// [endpointInformation] The endpoint information.
  /// [filterQuery] The filter query.
  const FilterRule({
    this.endpointInformation,
    this.filterQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInformation': ?pulumi.Input.mapOptionalInputValue<List<EndpointInformation>, List<Map<String, dynamic>>>(endpointInformation, (value) => pulumi.Input.encodeList<EndpointInformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filterQuery': ?filterQuery,
    };
  }

  factory FilterRule.fromMap(Map<String, dynamic> map) {
    return FilterRule(
      endpointInformation: (() { final guardedValue = map['endpointInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointInformation>(guardedValue, (value) => EndpointInformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filterQuery: (() { final guardedValue = map['filterQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
