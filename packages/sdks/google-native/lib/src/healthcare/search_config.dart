// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_parameter.dart';

/// Contains the configuration for FHIR search.
class SearchConfig {
  /// A list of search parameters in this FHIR store that are used to configure this FHIR store.
  final pulumi.Input<List<SearchParameter>>? searchParameters;

  /// Creates a new [SearchConfig].
  /// [searchParameters] A list of search parameters in this FHIR store that are used to configure this FHIR store.
  const SearchConfig({
    this.searchParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchParameters': ?pulumi.Input.mapOptionalInputValue<List<SearchParameter>, List<Map<String, dynamic>>>(searchParameters, (value) => pulumi.Input.encodeList<SearchParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SearchConfig.fromMap(Map<String, dynamic> map) {
    return SearchConfig(
      searchParameters: (() { final guardedValue = map['searchParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SearchParameter>(guardedValue, (value) => SearchParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

