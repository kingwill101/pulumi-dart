// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchTokenFilter {
  /// Filter tokens whose name contains this string (case-insensitive).
  final pulumi.Input<String?>? search;

  /// Creates a new [GetAiSearchTokenFilter].
  /// [search] Filter tokens whose name contains this string (case-insensitive).
  const GetAiSearchTokenFilter({
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'search': ?search,
    };
  }

  factory GetAiSearchTokenFilter.fromMap(Map<String, dynamic> map) {
    return GetAiSearchTokenFilter(
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
