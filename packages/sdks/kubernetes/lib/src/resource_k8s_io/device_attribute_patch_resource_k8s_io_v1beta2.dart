// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeviceAttribute must have exactly one field set.
class DeviceAttributePatchResourceK8sIoV1beta2 {
  /// BoolValue is a true/false value.
  final pulumi.Input<bool>? bool;
  /// IntValue is a number.
  final pulumi.Input<int>? int;
  /// StringValue is a string. Must not be longer than 64 characters.
  final pulumi.Input<String>? string;
  /// VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  final pulumi.Input<String>? version;

  /// Creates a new [DeviceAttributePatchResourceK8sIoV1beta2].
  /// [bool] BoolValue is a true/false value.
  /// [int] IntValue is a number.
  /// [string] StringValue is a string. Must not be longer than 64 characters.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  DeviceAttributePatchResourceK8sIoV1beta2({
    this.bool,
    this.int,
    this.string,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool,
      'int': ?int,
      'string': ?string,
      'version': ?version,
    };
  }

  factory DeviceAttributePatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceAttributePatchResourceK8sIoV1beta2(
      bool: map['bool'] == null ? null : (map['bool']! as bool).input(),
      int: map['int'] == null ? null : (map['int']! as int).input(),
      string: map['string'] == null ? null : (map['string']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

