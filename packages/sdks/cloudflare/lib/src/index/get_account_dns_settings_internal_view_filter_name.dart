// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountDnsSettingsInternalViewFilterName {
  /// Substring of the DNS view name.
  final pulumi.Input<String?>? contains;
  /// Suffix of the DNS view name.
  final pulumi.Input<String?>? endswith;
  /// Exact value of the DNS view name.
  final pulumi.Input<String?>? exact;
  /// Prefix of the DNS view name.
  final pulumi.Input<String?>? startswith;

  /// Creates a new [GetAccountDnsSettingsInternalViewFilterName].
  /// [contains] Substring of the DNS view name.
  /// [endswith] Suffix of the DNS view name.
  /// [exact] Exact value of the DNS view name.
  /// [startswith] Prefix of the DNS view name.
  const GetAccountDnsSettingsInternalViewFilterName({
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

  factory GetAccountDnsSettingsInternalViewFilterName.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsInternalViewFilterName(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endswith: (() { final guardedValue = map['endswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startswith: (() { final guardedValue = map['startswith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
