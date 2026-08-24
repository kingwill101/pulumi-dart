// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayFilter {
  /// Search by id
  final pulumi.Input<String?>? search;

  /// Creates a new [GetAiGatewayFilter].
  /// [search] Search by id
  const GetAiGatewayFilter({
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'search': ?search,
    };
  }

  factory GetAiGatewayFilter.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayFilter(
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
