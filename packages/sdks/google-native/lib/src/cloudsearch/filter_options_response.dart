// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';

/// Filter options to be applied on query.
class FilterOptionsResponse {
  /// Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  final pulumi.Input<FilterResponse> filter;
  /// If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
  final pulumi.Input<String> objectType;

  /// Creates a new [FilterOptionsResponse].
  /// [filter] Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  /// [objectType] If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
  const FilterOptionsResponse({
    required this.filter,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': pulumi.Input.mapInputValue<FilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'objectType': objectType,
    };
  }

  factory FilterOptionsResponse.fromMap(Map<String, dynamic> map) {
    return FilterOptionsResponse(
      filter: pulumi.Input.fromValue(FilterResponse.fromMap((map['filter']! as Map).cast<String, dynamic>())),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}

