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
    required pulumi.Output<String> applicationName,
    pulumi.Output<String>? blobPath,
    pulumi.Output<String>? draftPackageId,
    pulumi.Output<List<FirstPartyAppDefinition>>? firstPartyApps,
    pulumi.Output<String>? flightingRing,
    pulumi.Output<InplaceUpgradeOSInfo>? inplaceUpgradeOSPair,
    pulumi.Output<IntuneEnrollmentMetadata>? intuneEnrollmentMetadata,
    pulumi.Output<String>? location,
    pulumi.Output<String>? packageName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<TargetOSInfo>>? targetOSList,
    required pulumi.Output<String> testBaseAccountName,
    pulumi.Output<List<Test>>? tests,
    required pulumi.Output<String> version,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      blobPath = pulumi.Input.asOptionalInput<String>(blobPath),
      draftPackageId = pulumi.Input.asOptionalInput<String>(draftPackageId),
      firstPartyApps = pulumi.Input.asOptionalInput<List<FirstPartyAppDefinition>>(firstPartyApps),
      flightingRing = pulumi.Input.asOptionalInput<String>(flightingRing),
      inplaceUpgradeOSPair = pulumi.Input.asOptionalInput<InplaceUpgradeOSInfo>(inplaceUpgradeOSPair),
      intuneEnrollmentMetadata = pulumi.Input.asOptionalInput<IntuneEnrollmentMetadata>(intuneEnrollmentMetadata),
      location = pulumi.Input.asOptionalInput<String>(location),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetOSList = pulumi.Input.asOptionalInput<List<TargetOSInfo>>(targetOSList),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName),
      tests = pulumi.Input.asOptionalInput<List<Test>>(tests),
      version = pulumi.Input.asInput<String>(version);

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
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      blobPath: map['blobPath'] == null ? null : pulumi.Output.create<String>(map['blobPath'] as String),
      draftPackageId: map['draftPackageId'] == null ? null : pulumi.Output.create<String>(map['draftPackageId'] as String),
      firstPartyApps: map['firstPartyApps'] == null ? null : pulumi.Output.create<List<FirstPartyAppDefinition>>(pulumi.Input.decodeList<FirstPartyAppDefinition>(map['firstPartyApps'], (value) => FirstPartyAppDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      flightingRing: map['flightingRing'] == null ? null : pulumi.Output.create<String>(map['flightingRing'] as String),
      inplaceUpgradeOSPair: map['inplaceUpgradeOSPair'] == null ? null : pulumi.Output.create<InplaceUpgradeOSInfo>(InplaceUpgradeOSInfo.fromMap((map['inplaceUpgradeOSPair'] as Map).cast<String, dynamic>())),
      intuneEnrollmentMetadata: map['intuneEnrollmentMetadata'] == null ? null : pulumi.Output.create<IntuneEnrollmentMetadata>(IntuneEnrollmentMetadata.fromMap((map['intuneEnrollmentMetadata'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetOSList: map['targetOSList'] == null ? null : pulumi.Output.create<List<TargetOSInfo>>(pulumi.Input.decodeList<TargetOSInfo>(map['targetOSList'], (value) => TargetOSInfo.fromMap((value as Map).cast<String, dynamic>()))),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
      tests: map['tests'] == null ? null : pulumi.Output.create<List<Test>>(pulumi.Input.decodeList<Test>(map['tests'], (value) => Test.fromMap((value as Map).cast<String, dynamic>()))),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

