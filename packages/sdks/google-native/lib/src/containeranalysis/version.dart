// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_kind.dart';

/// Version contains structured information about the version of a package.
class Version {
  /// Used to correct mistakes in the version numbering scheme.
  final pulumi.Input<int>? epoch;

  /// Human readable version string. This string is of the form :- and is only set when kind is NORMAL.
  final pulumi.Input<String>? fullName;

  /// Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  final pulumi.Input<bool>? inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  final pulumi.Input<VersionKind> kind;

  /// Required only when version kind is NORMAL. The main part of the version name.
  final pulumi.Input<String>? name;

  /// The iteration of the package build from the above version.
  final pulumi.Input<String>? revision;

  /// Creates a new [Version].
  /// [epoch] Used to correct mistakes in the version numbering scheme.
  /// [fullName] Human readable version string. This string is of the form :- and is only set when kind is NORMAL.
  /// [inclusive] Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  /// [kind] Distinguishes between sentinel MIN/MAX versions and normal versions.
  /// [name] Required only when version kind is NORMAL. The main part of the version name.
  /// [revision] The iteration of the package build from the above version.
  Version({
    this.epoch,
    this.fullName,
    this.inclusive,
    required this.kind,
    this.name,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'epoch': ?epoch,
      'fullName': ?fullName,
      'inclusive': ?inclusive,
      'kind': pulumi.Input.mapInputValue<VersionKind, String>(
        kind,
        (value) => value.wireValue,
      ),
      'name': ?name,
      'revision': ?revision,
    };
  }

  factory Version.fromMap(Map<String, dynamic> map) {
    return Version(
      epoch: (() {
        final guardedValue = map['epoch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fullName: (() {
        final guardedValue = map['fullName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inclusive: (() {
        final guardedValue = map['inclusive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kind: pulumi.Input.fromValue(
        VersionKind.fromValue(map['kind']! as String),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      revision: (() {
        final guardedValue = map['revision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
