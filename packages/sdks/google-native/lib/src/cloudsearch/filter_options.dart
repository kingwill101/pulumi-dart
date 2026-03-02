// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter.dart';

/// Filter options to be applied on query.
class FilterOptions {
  /// Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  final pulumi.Input<Filter>? filter;
  /// If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
  final pulumi.Input<String>? objectType;

  /// Creates a new [FilterOptions].
  /// [filter] Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  /// [objectType] If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
  FilterOptions({
    this.filter,
    this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<Filter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'objectType': ?objectType,
    };
  }

  factory FilterOptions.fromMap(Map<String, dynamic> map) {
    return FilterOptions(
      filter: map['filter'] == null ? null : (Filter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      objectType: map['objectType'] == null ? null : (map['objectType']! as String).input(),
    );
  }
}

