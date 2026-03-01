// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_distribution_response.dart';
import 'version_response.dart';
import 'windows_update_response.dart';

/// An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows_update contain information for the Windows update.
class UpgradeOccurrenceResponse {
  /// Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  final UpgradeDistributionResponse distribution;
  /// Required for non-Windows OS. The package this Upgrade is for.
  final String package;
  /// Required for non-Windows OS. The version of the package in a machine + human readable form.
  final VersionResponse parsedVersion;
  /// Required for Windows OS. Represents the metadata about the Windows update.
  final WindowsUpdateResponse windowsUpdate;

  /// Creates a new [UpgradeOccurrenceResponse].
  /// [distribution] Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
  /// [package] Required for non-Windows OS. The package this Upgrade is for.
  /// [parsedVersion] Required for non-Windows OS. The version of the package in a machine + human readable form.
  /// [windowsUpdate] Required for Windows OS. Represents the metadata about the Windows update.
  UpgradeOccurrenceResponse({
    required this.distribution,
    required this.package,
    required this.parsedVersion,
    required this.windowsUpdate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distribution': distribution.toMap(),
      'package': package,
      'parsedVersion': parsedVersion.toMap(),
      'windowsUpdate': windowsUpdate.toMap(),
    };
  }

  factory UpgradeOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeOccurrenceResponse(
      distribution: UpgradeDistributionResponse.fromMap((map['distribution'] as Map).cast<String, dynamic>()),
      package: map['package'] as String,
      parsedVersion: VersionResponse.fromMap((map['parsedVersion'] as Map).cast<String, dynamic>()),
      windowsUpdate: WindowsUpdateResponse.fromMap((map['windowsUpdate'] as Map).cast<String, dynamic>()),
    );
  }
}

