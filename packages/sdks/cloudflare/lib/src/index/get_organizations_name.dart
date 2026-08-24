// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationsName {
  /// (case-insensitive) Filter the list of organizations to where the name contains a particular
  /// string.
  final pulumi.Input<String?>? contains;
  /// (case-insensitive) Filter the list of organizations to where the name ends with a particular
  /// string.
  final pulumi.Input<String?>? endsWith;
  /// (case-insensitive) Filter the list of organizations to where the name starts with a
  /// particular string.
  final pulumi.Input<String?>? startsWith;

  /// Creates a new [GetOrganizationsName].
  /// [contains] (case-insensitive) Filter the list of organizations to where the name contains a particular
  /// [endsWith] (case-insensitive) Filter the list of organizations to where the name ends with a particular
  /// [startsWith] (case-insensitive) Filter the list of organizations to where the name starts with a
  const GetOrganizationsName({
    this.contains,
    this.endsWith,
    this.startsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'endsWith': ?endsWith,
      'startsWith': ?startsWith,
    };
  }

  factory GetOrganizationsName.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsName(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endsWith: (() { final guardedValue = map['endsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startsWith: (() { final guardedValue = map['startsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
