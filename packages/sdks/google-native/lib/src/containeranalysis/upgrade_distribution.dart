// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.
class UpgradeDistribution {
  /// The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)
  final pulumi.Input<String>? classification;
  /// Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  final pulumi.Input<String>? cpeUri;
  /// The cve tied to this Upgrade.
  final pulumi.Input<List<String>>? cve;
  /// The severity as specified by the upstream operating system.
  final pulumi.Input<String>? severity;

  /// Creates a new [UpgradeDistribution].
  /// [classification] The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)
  /// [cpeUri] Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  /// [cve] The cve tied to this Upgrade.
  /// [severity] The severity as specified by the upstream operating system.
  const UpgradeDistribution({
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

  factory UpgradeDistribution.fromMap(Map<String, dynamic> map) {
    return UpgradeDistribution(
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpeUri: (() { final guardedValue = map['cpeUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cve: (() { final guardedValue = map['cve']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
