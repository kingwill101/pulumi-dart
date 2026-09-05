// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SoftwareUpdateConfigurationLinux {
  /// Specifies the list of update classifications included in the Software Update Configuration. Possible values are `Unclassified`, `Critical`, `Security` and `Other`.
  final pulumi.Input<List<String>> classificationsIncludeds;
  /// Specifies a list of packages to excluded from the Software Update Configuration.
  final pulumi.Input<List<String>?>? excludedPackages;
  /// Specifies a list of packages to included from the Software Update Configuration.
  final pulumi.Input<List<String>?>? includedPackages;
  /// Specifies the reboot settings after software update, possible values are `IfRequired`, `Never`, `RebootOnly` and `Always`. Defaults to `IfRequired`.
  final pulumi.Input<String?>? reboot;

  /// Creates a new [SoftwareUpdateConfigurationLinux].
  /// [classificationsIncludeds] Specifies the list of update classifications included in the Software Update Configuration. Possible values are `Unclassified`, `Critical`, `Security` and `Other`.
  /// [excludedPackages] Specifies a list of packages to excluded from the Software Update Configuration.
  /// [includedPackages] Specifies a list of packages to included from the Software Update Configuration.
  /// [reboot] Specifies the reboot settings after software update, possible values are `IfRequired`, `Never`, `RebootOnly` and `Always`. Defaults to `IfRequired`.
  const SoftwareUpdateConfigurationLinux({
    required this.classificationsIncludeds,
    this.excludedPackages,
    this.includedPackages,
    this.reboot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsIncludeds': classificationsIncludeds,
      'excludedPackages': ?excludedPackages,
      'includedPackages': ?includedPackages,
      'reboot': ?reboot,
    };
  }

  factory SoftwareUpdateConfigurationLinux.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationLinux(
      classificationsIncludeds: pulumi.Input.fromValue((map['classificationsIncludeds'] as List).cast<String>()),
      excludedPackages: (() { final guardedValue = map['excludedPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedPackages: (() { final guardedValue = map['includedPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reboot: (() { final guardedValue = map['reboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
