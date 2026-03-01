// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_information.dart';

class FilterRule {
  /// The endpoint information.
  final List<EndpointInformation>? endpointInformation;
  /// The filter query.
  final String? filterQuery;

  /// Creates a new [FilterRule].
  /// [endpointInformation] The endpoint information.
  /// [filterQuery] The filter query.
  FilterRule({
    this.endpointInformation,
    this.filterQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInformation': ?endpointInformation == null ? null : pulumi.Input.encodeList<EndpointInformation, Map<String, dynamic>>(endpointInformation!, (value) => value.toMap()),
      'filterQuery': ?filterQuery,
    };
  }

  factory FilterRule.fromMap(Map<String, dynamic> map) {
    return FilterRule(
      endpointInformation: map['endpointInformation'] == null ? null : pulumi.Input.decodeList<EndpointInformation>(map['endpointInformation'], (value) => EndpointInformation.fromMap((value as Map).cast<String, dynamic>())),
      filterQuery: map['filterQuery'] == null ? null : map['filterQuery'] as String,
    );
  }
}

