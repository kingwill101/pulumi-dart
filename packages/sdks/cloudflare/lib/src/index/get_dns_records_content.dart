// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsRecordsContent {
  /// Substring of the DNS record content. Content filters are case-insensitive.
  final pulumi.Input<String?>? contains;
  /// Suffix of the DNS record content. Content filters are case-insensitive.
  final pulumi.Input<String?>? endswith;
  /// Exact value of the DNS record content. Content filters are case-insensitive.
  final pulumi.Input<String?>? exact;
  /// Prefix of the DNS record content. Content filters are case-insensitive.
  final pulumi.Input<String?>? startswith;

  /// Creates a new [GetDnsRecordsContent].
  /// [contains] Substring of the DNS record content. Content filters are case-insensitive.
  /// [endswith] Suffix of the DNS record content. Content filters are case-insensitive.
  /// [exact] Exact value of the DNS record content. Content filters are case-insensitive.
  /// [startswith] Prefix of the DNS record content. Content filters are case-insensitive.
  const GetDnsRecordsContent({
    this.contains,
    this.endswith,
    this.exact,
    this.startswith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'endswith': ?endswith,
      'exact': ?exact,
      'startswith': ?startswith,
    };
  }

  factory GetDnsRecordsContent.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordsContent(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endswith: (() { final guardedValue = map['endswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startswith: (() { final guardedValue = map['startswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
