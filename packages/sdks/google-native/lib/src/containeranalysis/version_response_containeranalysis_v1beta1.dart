// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Version contains structured information about the version of a package.
class VersionResponseContaineranalysisV1beta1 {
  /// Used to correct mistakes in the version numbering scheme.
  final pulumi.Input<int> epoch;

  /// Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  final pulumi.Input<bool> inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  final pulumi.Input<String> kind;

  /// Required only when version kind is NORMAL. The main part of the version name.
  final pulumi.Input<String> name;

  /// The iteration of the package build from the above version.
  final pulumi.Input<String> revision;

  /// Creates a new [VersionResponseContaineranalysisV1beta1].
  /// [epoch] Used to correct mistakes in the version numbering scheme.
  /// [inclusive] Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  /// [kind] Distinguishes between sentinel MIN/MAX versions and normal versions.
  /// [name] Required only when version kind is NORMAL. The main part of the version name.
  /// [revision] The iteration of the package build from the above version.
  VersionResponseContaineranalysisV1beta1({
    required this.epoch,
    required this.inclusive,
    required this.kind,
    required this.name,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'epoch': epoch,
      'inclusive': inclusive,
      'kind': kind,
      'name': name,
      'revision': revision,
    };
  }

  factory VersionResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VersionResponseContaineranalysisV1beta1(
      epoch: pulumi.Input.fromValue(map['epoch'] as int),
      inclusive: pulumi.Input.fromValue(map['inclusive'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as String),
    );
  }
}
