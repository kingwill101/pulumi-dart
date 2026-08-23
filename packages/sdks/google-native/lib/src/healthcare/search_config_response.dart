// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_parameter_response.dart';

/// Contains the configuration for FHIR search.
class SearchConfigResponse {
  /// A list of search parameters in this FHIR store that are used to configure this FHIR store.
  final pulumi.Input<List<SearchParameterResponse>> searchParameters;

  /// Creates a new [SearchConfigResponse].
  /// [searchParameters] A list of search parameters in this FHIR store that are used to configure this FHIR store.
  const SearchConfigResponse({
    required this.searchParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchParameters': pulumi.Input.mapInputValue<List<SearchParameterResponse>, List<Map<String, dynamic>>>(searchParameters, (value) => pulumi.Input.encodeList<SearchParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SearchConfigResponse.fromMap(Map<String, dynamic> map) {
    return SearchConfigResponse(
      searchParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<SearchParameterResponse>(map['searchParameters']!, (value) => SearchParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
