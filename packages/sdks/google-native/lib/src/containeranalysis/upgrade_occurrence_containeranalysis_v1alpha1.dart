// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_distribution_containeranalysis_v1alpha1.dart';
import 'version_containeranalysis_v1alpha1.dart';

/// An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability).
class UpgradeOccurrenceContaineranalysisV1alpha1 {
  /// Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  final pulumi.Input<UpgradeDistributionContaineranalysisV1alpha1>? distribution;
  /// Required - The package this Upgrade is for.
  final pulumi.Input<String>? package;
  /// Required - The version of the package in a machine + human readable form.
  final pulumi.Input<VersionContaineranalysisV1alpha1>? parsedVersion;

  /// Creates a new [UpgradeOccurrenceContaineranalysisV1alpha1].
  /// [distribution] Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  /// [package] Required - The package this Upgrade is for.
  /// [parsedVersion] Required - The version of the package in a machine + human readable form.
  UpgradeOccurrenceContaineranalysisV1alpha1({
    this.distribution,
    this.package,
    this.parsedVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distribution': ?pulumi.Input.mapOptionalInputValue<UpgradeDistributionContaineranalysisV1alpha1, Map<String, dynamic>>(distribution, (value) => value.toMap()),
      'package': ?package,
      'parsedVersion': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1alpha1, Map<String, dynamic>>(parsedVersion, (value) => value.toMap()),
    };
  }

  factory UpgradeOccurrenceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return UpgradeOccurrenceContaineranalysisV1alpha1(
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeDistributionContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parsedVersion: (() { final guardedValue = map['parsedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VersionContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

