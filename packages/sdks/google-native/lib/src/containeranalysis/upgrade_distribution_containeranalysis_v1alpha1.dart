// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.
class UpgradeDistributionContaineranalysisV1alpha1 {
  /// The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed.
  final pulumi.Input<String>? classification;

  /// Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  final pulumi.Input<String>? cpeUri;

  /// The cve that would be resolved by this upgrade.
  final pulumi.Input<List<String>>? cve;

  /// The severity as specified by the upstream operating system.
  final pulumi.Input<String>? severity;

  /// Creates a new [UpgradeDistributionContaineranalysisV1alpha1].
  /// [classification] The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed.
  /// [cpeUri] Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  /// [cve] The cve that would be resolved by this upgrade.
  /// [severity] The severity as specified by the upstream operating system.
  UpgradeDistributionContaineranalysisV1alpha1({
    this.classification,
    this.cpeUri,
    this.cve,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification,
      'cpeUri': ?cpeUri,
      'cve': ?cve,
      'severity': ?severity,
    };
  }

  factory UpgradeDistributionContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return UpgradeDistributionContaineranalysisV1alpha1(
      classification: (() {
        final guardedValue = map['classification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpeUri: (() {
        final guardedValue = map['cpeUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cve: (() {
        final guardedValue = map['cve'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      severity: (() {
        final guardedValue = map['severity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
