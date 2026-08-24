// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsRecordsComment {
  /// If this parameter is present, only records *without* a comment are returned.
  final pulumi.Input<String?>? absent;
  /// Substring of the DNS record comment. Comment filters are case-insensitive.
  final pulumi.Input<String?>? contains;
  /// Suffix of the DNS record comment. Comment filters are case-insensitive.
  final pulumi.Input<String?>? endswith;
  /// Exact value of the DNS record comment. Comment filters are case-insensitive.
  final pulumi.Input<String?>? exact;
  /// If this parameter is present, only records *with* a comment are returned.
  final pulumi.Input<String?>? present;
  /// Prefix of the DNS record comment. Comment filters are case-insensitive.
  final pulumi.Input<String?>? startswith;

  /// Creates a new [GetDnsRecordsComment].
  /// [absent] If this parameter is present, only records *without* a comment are returned.
  /// [contains] Substring of the DNS record comment. Comment filters are case-insensitive.
  /// [endswith] Suffix of the DNS record comment. Comment filters are case-insensitive.
  /// [exact] Exact value of the DNS record comment. Comment filters are case-insensitive.
  /// [present] If this parameter is present, only records *with* a comment are returned.
  /// [startswith] Prefix of the DNS record comment. Comment filters are case-insensitive.
  const GetDnsRecordsComment({
    this.absent,
    this.contains,
    this.endswith,
    this.exact,
    this.present,
    this.startswith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absent': ?absent,
      'contains': ?contains,
      'endswith': ?endswith,
      'exact': ?exact,
      'present': ?present,
      'startswith': ?startswith,
    };
  }

  factory GetDnsRecordsComment.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordsComment(
      absent: (() { final guardedValue = map['absent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endswith: (() { final guardedValue = map['endswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      present: (() { final guardedValue = map['present']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startswith: (() { final guardedValue = map['startswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
