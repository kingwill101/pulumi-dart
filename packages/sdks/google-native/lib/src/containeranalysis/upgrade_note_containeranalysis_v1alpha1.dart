// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_distribution_containeranalysis_v1alpha1.dart';
import 'version_containeranalysis_v1alpha1.dart';

/// An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be a Upgrade Note.
class UpgradeNoteContaineranalysisV1alpha1 {
  /// Metadata about the upgrade for each specific operating system.
  final pulumi.Input<List<UpgradeDistributionContaineranalysisV1alpha1>>? distributions;
  /// Required - The package this Upgrade is for.
  final pulumi.Input<String>? package;
  /// Required - The version of the package in machine + human readable form.
  final pulumi.Input<VersionContaineranalysisV1alpha1>? version;

  /// Creates a new [UpgradeNoteContaineranalysisV1alpha1].
  /// [distributions] Metadata about the upgrade for each specific operating system.
  /// [package] Required - The package this Upgrade is for.
  /// [version] Required - The version of the package in machine + human readable form.
  UpgradeNoteContaineranalysisV1alpha1({
    this.distributions,
    this.package,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributions': ?pulumi.Input.mapOptionalInputValue<List<UpgradeDistributionContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(distributions, (value) => pulumi.Input.encodeList<UpgradeDistributionContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'package': ?package,
      'version': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1alpha1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory UpgradeNoteContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return UpgradeNoteContaineranalysisV1alpha1(
      distributions: map['distributions'] == null ? null : (pulumi.Input.decodeList<UpgradeDistributionContaineranalysisV1alpha1>(map['distributions']!, (value) => UpgradeDistributionContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      package: map['package'] == null ? null : (map['package']! as String).input(),
      version: map['version'] == null ? null : (VersionContaineranalysisV1alpha1.fromMap((map['version']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

