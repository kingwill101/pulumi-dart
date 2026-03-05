// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_distribution_response_containeranalysis_v1alpha1.dart';
import 'version_response_containeranalysis_v1alpha1.dart';

/// An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be a Upgrade Note.
class UpgradeNoteResponseContaineranalysisV1alpha1 {
  /// Metadata about the upgrade for each specific operating system.
  final pulumi.Input<List<UpgradeDistributionResponseContaineranalysisV1alpha1>> distributions;
  /// Required - The package this Upgrade is for.
  final pulumi.Input<String> package;
  /// Required - The version of the package in machine + human readable form.
  final pulumi.Input<VersionResponseContaineranalysisV1alpha1> version;

  /// Creates a new [UpgradeNoteResponseContaineranalysisV1alpha1].
  /// [distributions] Metadata about the upgrade for each specific operating system.
  /// [package] Required - The package this Upgrade is for.
  /// [version] Required - The version of the package in machine + human readable form.
  UpgradeNoteResponseContaineranalysisV1alpha1({
    required this.distributions,
    required this.package,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributions': pulumi.Input.mapInputValue<List<UpgradeDistributionResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(distributions, (value) => pulumi.Input.encodeList<UpgradeDistributionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'package': package,
      'version': pulumi.Input.mapInputValue<VersionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory UpgradeNoteResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return UpgradeNoteResponseContaineranalysisV1alpha1(
      distributions: pulumi.Input.fromValue(pulumi.Input.decodeList<UpgradeDistributionResponseContaineranalysisV1alpha1>(map['distributions']!, (value) => UpgradeDistributionResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      package: pulumi.Input.fromValue(map['package'] as String),
      version: pulumi.Input.fromValue(VersionResponseContaineranalysisV1alpha1.fromMap((map['version']! as Map).cast<String, dynamic>())),
    );
  }
}

