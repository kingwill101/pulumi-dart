// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSshKeysFilter {
  final pulumi.Input<bool>? all;
  /// Filter the SSH Keys by this key. This may be one of `name`, `public_key`, or `fingerprint`.
  final pulumi.Input<String> key;
  final pulumi.Input<String>? matchBy;
  /// A list of values to match against the key field. Only retrieves SSH keys where the key field matches one or more of the values provided here.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetSshKeysFilter].
  /// [all] Optional.
  /// [key] Filter the SSH Keys by this key. This may be one of `name`, `public_key`, or `fingerprint`.
  /// [matchBy] Optional.
  /// [values] A list of values to match against the key field. Only retrieves SSH keys where the key field matches one or more of the values provided here.
  GetSshKeysFilter({
    this.all,
    required this.key,
    this.matchBy,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'key': key,
      'matchBy': ?matchBy,
      'values': values,
    };
  }

  factory GetSshKeysFilter.fromMap(Map<String, dynamic> map) {
    return GetSshKeysFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      matchBy: (() { final guardedValue = map['matchBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

