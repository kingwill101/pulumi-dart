// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupFilter {
  /// The name of the group.
  final pulumi.Input<String?>? name;
  /// Search for groups by other listed query parameters.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustAccessGroupFilter].
  /// [name] The name of the group.
  /// [search] Search for groups by other listed query parameters.
  const GetZeroTrustAccessGroupFilter({
    this.name,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessGroupFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupFilter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
