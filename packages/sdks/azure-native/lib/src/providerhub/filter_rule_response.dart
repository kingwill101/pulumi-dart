// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_information_response.dart';

class FilterRuleResponse {
  /// The endpoint information.
  final List<EndpointInformationResponse>? endpointInformation;
  /// The filter query.
  final String? filterQuery;

  /// Creates a new [FilterRuleResponse].
  /// [endpointInformation] The endpoint information.
  /// [filterQuery] The filter query.
  FilterRuleResponse({
    this.endpointInformation,
    this.filterQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInformation': ?endpointInformation == null ? null : pulumi.Input.encodeList<EndpointInformationResponse, Map<String, dynamic>>(endpointInformation!, (value) => value.toMap()),
      'filterQuery': ?filterQuery,
    };
  }

  factory FilterRuleResponse.fromMap(Map<String, dynamic> map) {
    return FilterRuleResponse(
      endpointInformation: map['endpointInformation'] == null ? null : pulumi.Input.decodeList<EndpointInformationResponse>(map['endpointInformation'], (value) => EndpointInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      filterQuery: map['filterQuery'] == null ? null : map['filterQuery'] as String,
    );
  }
}

