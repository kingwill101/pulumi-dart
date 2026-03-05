// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_kind_containeranalysis_v1beta1.dart';

/// Version contains structured information about the version of a package.
class VersionContaineranalysisV1beta1 {
  /// Used to correct mistakes in the version numbering scheme.
  final pulumi.Input<int>? epoch;
  /// Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  final pulumi.Input<bool>? inclusive;
  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  final pulumi.Input<VersionKindContaineranalysisV1beta1> kind;
  /// Required only when version kind is NORMAL. The main part of the version name.
  final pulumi.Input<String>? name;
  /// The iteration of the package build from the above version.
  final pulumi.Input<String>? revision;

  /// Creates a new [VersionContaineranalysisV1beta1].
  /// [epoch] Used to correct mistakes in the version numbering scheme.
  /// [inclusive] Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  /// [kind] Distinguishes between sentinel MIN/MAX versions and normal versions.
  /// [name] Required only when version kind is NORMAL. The main part of the version name.
  /// [revision] The iteration of the package build from the above version.
  VersionContaineranalysisV1beta1({
    this.epoch,
    this.inclusive,
    required this.kind,
    this.name,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'epoch': ?epoch,
      'inclusive': ?inclusive,
      'kind': pulumi.Input.mapInputValue<VersionKindContaineranalysisV1beta1, String>(kind, (value) => value.wireValue),
      'name': ?name,
      'revision': ?revision,
    };
  }

  factory VersionContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return VersionContaineranalysisV1beta1(
      epoch: (() { final guardedValue = map['epoch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      inclusive: (() { final guardedValue = map['inclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: pulumi.Input.fromValue(VersionKindContaineranalysisV1beta1.fromValue(map['kind']! as String)),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

