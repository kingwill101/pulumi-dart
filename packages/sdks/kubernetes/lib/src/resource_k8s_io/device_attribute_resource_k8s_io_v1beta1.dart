// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeviceAttribute must have exactly one field set.
class DeviceAttributeResourceK8sIoV1beta1 {
  /// BoolValue is a true/false value.
  final pulumi.Input<bool?>? bool_;
  /// BoolValues is a non-empty list of true/false values.
  final pulumi.Input<List<bool>?>? bools;
  /// IntValue is a number.
  final pulumi.Input<int?>? int_;
  /// IntValues is a non-empty list of numbers.
  ///
  /// This is an alpha field and requires enabling the DRAListTypeAttributes feature gate.
  final pulumi.Input<List<int>?>? ints;
  /// StringValue is a string. Must not be longer than 64 characters.
  final pulumi.Input<String?>? string_;
  /// StringValues is a non-empty list of strings. Each string must not be longer than 64 characters.
  ///
  /// This is an alpha field and requires enabling the DRAListTypeAttributes feature gate.
  final pulumi.Input<List<String>?>? strings;
  /// VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  final pulumi.Input<String?>? version;
  /// VersionValues is a non-empty list of semantic versions according to semver.org spec 2.0.0. Each version string must not be longer than 64 characters.
  ///
  /// This is an alpha field and requires enabling the DRAListTypeAttributes feature gate.
  final pulumi.Input<List<String>?>? versions;

  /// Creates a new [DeviceAttributeResourceK8sIoV1beta1].
  /// [bool_] BoolValue is a true/false value.
  /// [bools] BoolValues is a non-empty list of true/false values.
  /// [int_] IntValue is a number.
  /// [ints] IntValues is a non-empty list of numbers.
  /// [string_] StringValue is a string. Must not be longer than 64 characters.
  /// [strings] StringValues is a non-empty list of strings. Each string must not be longer than 64 characters.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  /// [versions] VersionValues is a non-empty list of semantic versions according to semver.org spec 2.0.0. Each version string must not be longer than 64 characters.
  const DeviceAttributeResourceK8sIoV1beta1({
    this.bool_,
    this.bools,
    this.int_,
    this.ints,
    this.string_,
    this.strings,
    this.version,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool_,
      'bools': ?bools,
      'int': ?int_,
      'ints': ?ints,
      'string': ?string_,
      'strings': ?strings,
      'version': ?version,
      'versions': ?versions,
    };
  }

  factory DeviceAttributeResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceAttributeResourceK8sIoV1beta1(
      bool_: (() { final guardedValue = map['bool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bools: (() { final guardedValue = map['bools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
      int_: (() { final guardedValue = map['int']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ints: (() { final guardedValue = map['ints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      string_: (() { final guardedValue = map['string']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strings: (() { final guardedValue = map['strings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
