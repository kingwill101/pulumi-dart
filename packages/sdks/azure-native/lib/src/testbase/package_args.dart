// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'first_party_app_definition.dart';
import 'inplace_upgrade_osinfo.dart';
import 'intune_enrollment_metadata.dart';
import 'target_osinfo.dart';
import 'test.dart';

/// {@template pulumi_testbase_package_args_doc}
/// The set of arguments for Package.
/// {@endtemplate}
/// {@macro pulumi_testbase_package_args_doc}
class PackageArgs {
  /// Application name
  final pulumi.Input<String> applicationName;
  /// The file path of the package.
  final pulumi.Input<String>? blobPath;
  /// The id of draft package. Used to create or update this package from a draft package.
  final pulumi.Input<String>? draftPackageId;
  /// The list of first party applications to test along with user application.
  final pulumi.Input<List<FirstPartyAppDefinition>>? firstPartyApps;
  /// The flighting ring for feature update.
  final pulumi.Input<String>? flightingRing;
  /// Specifies the baseline os and target os for inplace upgrade.
  final pulumi.Input<InplaceUpgradeOSInfo>? inplaceUpgradeOSPair;
  /// The metadata of Intune enrollment.
  final pulumi.Input<IntuneEnrollmentMetadata>? intuneEnrollmentMetadata;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource name of the Test Base Package.
  final pulumi.Input<String>? packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the target OSs of specific OS Update types.
  final pulumi.Input<List<TargetOSInfo>>? targetOSList;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;
  /// The detailed test information.
  final pulumi.Input<List<Test>>? tests;
  /// Application version
  final pulumi.Input<String> version;

  /// Creates a new [PackageArgs].
  /// [applicationName] Application name
  /// [blobPath] The file path of the package.
  /// [draftPackageId] The id of draft package. Used to create or update this package from a draft package.
  /// [firstPartyApps] The list of first party applications to test along with user application.
  /// [flightingRing] The flighting ring for feature update.
  /// [inplaceUpgradeOSPair] Specifies the baseline os and target os for inplace upgrade.
  /// [intuneEnrollmentMetadata] The metadata of Intune enrollment.
  /// [location] The geo-location where the resource lives
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [targetOSList] Specifies the target OSs of specific OS Update types.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  /// [tests] The detailed test information.
  /// [version] Application version
  PackageArgs({
    required this.applicationName,
    this.blobPath,
    this.draftPackageId,
    this.firstPartyApps,
    this.flightingRing,
    this.inplaceUpgradeOSPair,
    this.intuneEnrollmentMetadata,
    this.location,
    this.packageName,
    required this.resourceGroupName,
    this.tags,
    this.targetOSList,
    required this.testBaseAccountName,
    this.tests,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'blobPath': ?blobPath,
      'draftPackageId': ?draftPackageId,
      'firstPartyApps': ?pulumi.Input.mapOptionalInputValue<List<FirstPartyAppDefinition>, List<Map<String, dynamic>>>(firstPartyApps, (value) => pulumi.Input.encodeList<FirstPartyAppDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flightingRing': ?flightingRing,
      'inplaceUpgradeOSPair': ?pulumi.Input.mapOptionalInputValue<InplaceUpgradeOSInfo, Map<String, dynamic>>(inplaceUpgradeOSPair, (value) => value.toMap()),
      'intuneEnrollmentMetadata': ?pulumi.Input.mapOptionalInputValue<IntuneEnrollmentMetadata, Map<String, dynamic>>(intuneEnrollmentMetadata, (value) => value.toMap()),
      'location': ?location,
      'packageName': ?packageName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetOSList': ?pulumi.Input.mapOptionalInputValue<List<TargetOSInfo>, List<Map<String, dynamic>>>(targetOSList, (value) => pulumi.Input.encodeList<TargetOSInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testBaseAccountName': testBaseAccountName,
      'tests': ?pulumi.Input.mapOptionalInputValue<List<Test>, List<Map<String, dynamic>>>(tests, (value) => pulumi.Input.encodeList<Test, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory PackageArgs.fromMap(Map<String, dynamic> map) {
    return PackageArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      blobPath: (() { final guardedValue = map['blobPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      draftPackageId: (() { final guardedValue = map['draftPackageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstPartyApps: (() { final guardedValue = map['firstPartyApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirstPartyAppDefinition>(guardedValue, (value) => FirstPartyAppDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      flightingRing: (() { final guardedValue = map['flightingRing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inplaceUpgradeOSPair: (() { final guardedValue = map['inplaceUpgradeOSPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InplaceUpgradeOSInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intuneEnrollmentMetadata: (() { final guardedValue = map['intuneEnrollmentMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntuneEnrollmentMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetOSList: (() { final guardedValue = map['targetOSList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetOSInfo>(guardedValue, (value) => TargetOSInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
      tests: (() { final guardedValue = map['tests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Test>(guardedValue, (value) => Test.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

