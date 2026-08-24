// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsRecordFilterTag {
  /// Name of a tag which must *not* be present on the DNS record. Tag filters are case-insensitive.
  final pulumi.Input<String?>? absent;
  /// A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value contains `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  final pulumi.Input<String?>? contains;
  /// A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value ends with `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  final pulumi.Input<String?>? endswith;
  /// A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value is `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  final pulumi.Input<String?>? exact;
  /// Name of a tag which must be present on the DNS record. Tag filters are case-insensitive.
  final pulumi.Input<String?>? present;
  /// A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value starts with `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  final pulumi.Input<String?>? startswith;

  /// Creates a new [GetDnsRecordFilterTag].
  /// [absent] Name of a tag which must *not* be present on the DNS record. Tag filters are case-insensitive.
  /// [contains] A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value contains `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  /// [endswith] A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value ends with `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  /// [exact] A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value is `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  /// [present] Name of a tag which must be present on the DNS record. Tag filters are case-insensitive.
  /// [startswith] A tag and value, of the form `&lt;tag-name&gt;:&lt;tag-value&gt;`. The API will only return DNS records that have a tag named `&lt;tag-name&gt;` whose value starts with `&lt;tag-value&gt;`. Tag filters are case-insensitive.
  const GetDnsRecordFilterTag({
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

  factory GetDnsRecordFilterTag.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordFilterTag(
      absent: (() { final guardedValue = map['absent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endswith: (() { final guardedValue = map['endswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      present: (() { final guardedValue = map['present']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startswith: (() { final guardedValue = map['startswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
