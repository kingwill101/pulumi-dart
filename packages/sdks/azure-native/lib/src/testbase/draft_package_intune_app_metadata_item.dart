// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Metadata of a single Intune App.
class DraftPackageIntuneAppMetadataItem {
  /// Intune app id.
  final pulumi.Input<String>? appId;
  /// Intune app name.
  final pulumi.Input<String>? appName;
  /// Creation date of the app.
  final pulumi.Input<String>? createDate;
  /// Ids of dependency apps.
  final pulumi.Input<List<String>>? dependencyIds;
  /// Count of dependency apps.
  final pulumi.Input<int>? dependentAppCount;
  /// Description of the app.
  final pulumi.Input<String>? description;
  /// Expected exit codes returned from Intune App.
  final pulumi.Input<List<String>>? expectedExitCodes;
  /// Install command.
  final pulumi.Input<String>? installCommand;
  /// last processed time tickets.
  final pulumi.Input<double>? lastProcessed;
  /// Minimum supported OS. The OS version must be greater than this version to run this app.
  final pulumi.Input<String>? minimumSupportedOS;
  /// Owner of the app.
  final pulumi.Input<String>? owner;
  /// Publisher of the app.
  final pulumi.Input<String>? publisher;
  /// Setup file path.
  final pulumi.Input<String>? setupFile;
  /// Extract status.
  final pulumi.Input<String>? status;
  /// Uninstall command.
  final pulumi.Input<String>? uninstallCommand;
  /// Intune app version.
  final pulumi.Input<String>? version;

  /// Creates a new [DraftPackageIntuneAppMetadataItem].
  /// [appId] Intune app id.
  /// [appName] Intune app name.
  /// [createDate] Creation date of the app.
  /// [dependencyIds] Ids of dependency apps.
  /// [dependentAppCount] Count of dependency apps.
  /// [description] Description of the app.
  /// [expectedExitCodes] Expected exit codes returned from Intune App.
  /// [installCommand] Install command.
  /// [lastProcessed] last processed time tickets.
  /// [minimumSupportedOS] Minimum supported OS. The OS version must be greater than this version to run this app.
  /// [owner] Owner of the app.
  /// [publisher] Publisher of the app.
  /// [setupFile] Setup file path.
  /// [status] Extract status.
  /// [uninstallCommand] Uninstall command.
  /// [version] Intune app version.
  const DraftPackageIntuneAppMetadataItem({
    this.appId,
    this.appName,
    this.createDate,
    this.dependencyIds,
    this.dependentAppCount,
    this.description,
    this.expectedExitCodes,
    this.installCommand,
    this.lastProcessed,
    this.minimumSupportedOS,
    this.owner,
    this.publisher,
    this.setupFile,
    this.status,
    this.uninstallCommand,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appName': ?appName,
      'createDate': ?createDate,
      'dependencyIds': ?dependencyIds,
      'dependentAppCount': ?dependentAppCount,
      'description': ?description,
      'expectedExitCodes': ?expectedExitCodes,
      'installCommand': ?installCommand,
      'lastProcessed': ?lastProcessed,
      'minimumSupportedOS': ?minimumSupportedOS,
      'owner': ?owner,
      'publisher': ?publisher,
      'setupFile': ?setupFile,
      'status': ?status,
      'uninstallCommand': ?uninstallCommand,
      'version': ?version,
    };
  }

  factory DraftPackageIntuneAppMetadataItem.fromMap(Map<String, dynamic> map) {
    return DraftPackageIntuneAppMetadataItem(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createDate: (() { final guardedValue = map['createDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dependencyIds: (() { final guardedValue = map['dependencyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dependentAppCount: (() { final guardedValue = map['dependentAppCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedExitCodes: (() { final guardedValue = map['expectedExitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      installCommand: (() { final guardedValue = map['installCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastProcessed: (() { final guardedValue = map['lastProcessed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minimumSupportedOS: (() { final guardedValue = map['minimumSupportedOS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setupFile: (() { final guardedValue = map['setupFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uninstallCommand: (() { final guardedValue = map['uninstallCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
