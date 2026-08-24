// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessServiceTokenFilter {
  /// The name of the service token.
  final pulumi.Input<String?>? name;
  /// Search for service tokens by other listed query parameters.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustAccessServiceTokenFilter].
  /// [name] The name of the service token.
  /// [search] Search for service tokens by other listed query parameters.
  const GetZeroTrustAccessServiceTokenFilter({
    this.name,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessServiceTokenFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessServiceTokenFilter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
