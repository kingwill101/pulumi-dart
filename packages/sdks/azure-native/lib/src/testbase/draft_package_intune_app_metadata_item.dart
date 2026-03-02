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
  DraftPackageIntuneAppMetadataItem({
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
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      appName: map['appName'] == null ? null : (map['appName']! as String).input(),
      createDate: map['createDate'] == null ? null : (map['createDate']! as String).input(),
      dependencyIds: map['dependencyIds'] == null ? null : ((map['dependencyIds']! as List).cast<String>()).input(),
      dependentAppCount: map['dependentAppCount'] == null ? null : (map['dependentAppCount']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expectedExitCodes: map['expectedExitCodes'] == null ? null : ((map['expectedExitCodes']! as List).cast<String>()).input(),
      installCommand: map['installCommand'] == null ? null : (map['installCommand']! as String).input(),
      lastProcessed: map['lastProcessed'] == null ? null : (map['lastProcessed']! as double).input(),
      minimumSupportedOS: map['minimumSupportedOS'] == null ? null : (map['minimumSupportedOS']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      setupFile: map['setupFile'] == null ? null : (map['setupFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      uninstallCommand: map['uninstallCommand'] == null ? null : (map['uninstallCommand']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

