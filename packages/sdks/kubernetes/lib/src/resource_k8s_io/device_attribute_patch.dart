// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeviceAttribute must have exactly one field set.
class DeviceAttributePatch {
  /// BoolValue is a true/false value.
  final pulumi.Input<bool>? bool_;

  /// IntValue is a number.
  final pulumi.Input<int>? int_;

  /// StringValue is a string. Must not be longer than 64 characters.
  final pulumi.Input<String>? string_;

  /// VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  final pulumi.Input<String>? version;

  /// Creates a new [DeviceAttributePatch].
  /// [bool_] BoolValue is a true/false value.
  /// [int_] IntValue is a number.
  /// [string_] StringValue is a string. Must not be longer than 64 characters.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  DeviceAttributePatch({this.bool_, this.int_, this.string_, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool_,
      'int': ?int_,
      'string': ?string_,
      'version': ?version,
    };
  }

  factory DeviceAttributePatch.fromMap(Map<String, dynamic> map) {
    return DeviceAttributePatch(
      bool_: (() {
        final guardedValue = map['bool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      int_: (() {
        final guardedValue = map['int'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      string_: (() {
        final guardedValue = map['string'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
