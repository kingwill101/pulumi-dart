// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationFilter {
  /// The aud of the app.
  final pulumi.Input<String?>? aud;
  /// The domain of the app.
  final pulumi.Input<String?>? domain;
  /// True for only exact string matches against passed name/domain query parameters.
  final pulumi.Input<bool?>? exact;
  /// The name of the app.
  final pulumi.Input<String?>? name;
  /// Search for apps by other listed query parameters.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustAccessApplicationFilter].
  /// [aud] The aud of the app.
  /// [domain] The domain of the app.
  /// [exact] True for only exact string matches against passed name/domain query parameters.
  /// [name] The name of the app.
  /// [search] Search for apps by other listed query parameters.
  const GetZeroTrustAccessApplicationFilter({
    this.aud,
    this.domain,
    this.exact,
    this.name,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aud': ?aud,
      'domain': ?domain,
      'exact': ?exact,
      'name': ?name,
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessApplicationFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationFilter(
      aud: (() { final guardedValue = map['aud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
