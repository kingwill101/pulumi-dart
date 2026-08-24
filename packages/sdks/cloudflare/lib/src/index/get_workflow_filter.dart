// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkflowFilter {
  /// Allows filtering workflows` name.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetWorkflowFilter].
  /// [search] Allows filtering workflows` name.
  const GetWorkflowFilter({
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'search': ?search,
    };
  }

  factory GetWorkflowFilter.fromMap(Map<String, dynamic> map) {
    return GetWorkflowFilter(
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
