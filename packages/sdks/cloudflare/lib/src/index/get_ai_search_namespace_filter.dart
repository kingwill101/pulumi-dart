// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchNamespaceFilter {
  /// Filter namespaces whose name or description contains this string (case-insensitive).
  final pulumi.Input<String?>? search;

  /// Creates a new [GetAiSearchNamespaceFilter].
  /// [search] Filter namespaces whose name or description contains this string (case-insensitive).
  const GetAiSearchNamespaceFilter({
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'search': ?search,
    };
  }

  factory GetAiSearchNamespaceFilter.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespaceFilter(
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
