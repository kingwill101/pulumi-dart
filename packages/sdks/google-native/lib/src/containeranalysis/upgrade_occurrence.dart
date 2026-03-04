// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_distribution.dart';
import 'version.dart';
import 'windows_update.dart';

/// An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows_update contain information for the Windows update.
class UpgradeOccurrence {
  /// Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  final pulumi.Input<UpgradeDistribution>? distribution;

  /// Required for non-Windows OS. The package this Upgrade is for.
  final pulumi.Input<String>? package;

  /// Required for non-Windows OS. The version of the package in a machine + human readable form.
  final pulumi.Input<Version>? parsedVersion;

  /// Required for Windows OS. Represents the metadata about the Windows update.
  final pulumi.Input<WindowsUpdate>? windowsUpdate;

  /// Creates a new [UpgradeOccurrence].
  /// [distribution] Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  /// [package] Required for non-Windows OS. The package this Upgrade is for.
  /// [parsedVersion] Required for non-Windows OS. The version of the package in a machine + human readable form.
  /// [windowsUpdate] Required for Windows OS. Represents the metadata about the Windows update.
  UpgradeOccurrence({
    this.distribution,
    this.package,
    this.parsedVersion,
    this.windowsUpdate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distribution':
          ?pulumi.Input.mapOptionalInputValue<
            UpgradeDistribution,
            Map<String, dynamic>
          >(distribution, (value) => value.toMap()),
      'package': ?package,
      'parsedVersion':
          ?pulumi.Input.mapOptionalInputValue<Version, Map<String, dynamic>>(
            parsedVersion,
            (value) => value.toMap(),
          ),
      'windowsUpdate':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsUpdate,
            Map<String, dynamic>
          >(windowsUpdate, (value) => value.toMap()),
    };
  }

  factory UpgradeOccurrence.fromMap(Map<String, dynamic> map) {
    return UpgradeOccurrence(
      distribution: (() {
        final guardedValue = map['distribution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UpgradeDistribution.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      package: (() {
        final guardedValue = map['package'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parsedVersion: (() {
        final guardedValue = map['parsedVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Version.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      windowsUpdate: (() {
        final guardedValue = map['windowsUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsUpdate.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
