// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_distribution_response.dart';
import 'version_response.dart';
import 'windows_update_response.dart';

/// An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be an Upgrade Note. For Windows, windows_update field represents the information related to the update.
class UpgradeNoteResponse {
  /// Metadata about the upgrade for each specific operating system.
  final pulumi.Input<List<UpgradeDistributionResponse>> distributions;
  /// Required for non-Windows OS. The package this Upgrade is for.
  final pulumi.Input<String> package;
  /// Required for non-Windows OS. The version of the package in machine + human readable form.
  final pulumi.Input<VersionResponse> version;
  /// Required for Windows OS. Represents the metadata about the Windows update.
  final pulumi.Input<WindowsUpdateResponse> windowsUpdate;

  /// Creates a new [UpgradeNoteResponse].
  /// [distributions] Metadata about the upgrade for each specific operating system.
  /// [package] Required for non-Windows OS. The package this Upgrade is for.
  /// [version] Required for non-Windows OS. The version of the package in machine + human readable form.
  /// [windowsUpdate] Required for Windows OS. Represents the metadata about the Windows update.
  const UpgradeNoteResponse({
    required this.distributions,
    required this.package,
    required this.version,
    required this.windowsUpdate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributions': pulumi.Input.mapInputValue<List<UpgradeDistributionResponse>, List<Map<String, dynamic>>>(distributions, (value) => pulumi.Input.encodeList<UpgradeDistributionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'package': package,
      'version': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(version, (value) => value.toMap()),
      'windowsUpdate': pulumi.Input.mapInputValue<WindowsUpdateResponse, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
    };
  }

  factory UpgradeNoteResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeNoteResponse(
      distributions: pulumi.Input.fromValue(pulumi.Input.decodeList<UpgradeDistributionResponse>(map['distributions']!, (value) => UpgradeDistributionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      package: pulumi.Input.fromValue(map['package'] as String),
      version: pulumi.Input.fromValue(VersionResponse.fromMap((map['version']! as Map).cast<String, dynamic>())),
      windowsUpdate: pulumi.Input.fromValue(WindowsUpdateResponse.fromMap((map['windowsUpdate']! as Map).cast<String, dynamic>())),
    );
  }
}

