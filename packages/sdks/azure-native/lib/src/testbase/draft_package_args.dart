// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'draft_package_intune_app_metadata.dart';
import 'first_party_app_definition.dart';
import 'gallery_app_definition.dart';
import 'highlighted_file.dart';
import 'inplace_upgrade_osinfo.dart';
import 'intune_enrollment_metadata.dart';
import 'tab_state.dart';
import 'target_osinfo.dart';
import 'test.dart';

/// {@template pulumi_testbase_draft_package_args_doc}
/// The set of arguments for DraftPackage.
/// {@endtemplate}
/// {@macro pulumi_testbase_draft_package_args_doc}
class DraftPackageArgs {
  /// The name of the app file.
  final pulumi.Input<String>? appFileName;
  /// Application name
  final pulumi.Input<String>? applicationName;
  /// Comments added by user.
  final pulumi.Input<String>? comments;
  /// The resource name of the Test Base Draft Package.
  final pulumi.Input<String>? draftPackageName;
  /// Specifies whether this draft package is used to edit a package.
  final pulumi.Input<bool>? editPackage;
  /// The executable launch command for script auto-fill. Will be used to run the application.
  final pulumi.Input<String>? executableLaunchCommand;
  /// The list of first party applications to test along with user application.
  final pulumi.Input<List<FirstPartyAppDefinition>>? firstPartyApps;
  /// The flighting ring for feature update.
  final pulumi.Input<String>? flightingRing;
  /// The list of gallery apps to test along with user application.
  final pulumi.Input<List<GalleryAppDefinition>>? galleryApps;
  /// The highlight files in the package.
  final pulumi.Input<List<HighlightedFile>>? highlightedFiles;
  /// Specifies the baseline os and target os for inplace upgrade.
  final pulumi.Input<InplaceUpgradeOSInfo>? inplaceUpgradeOSPair;
  /// The metadata of Intune enrollment.
  final pulumi.Input<IntuneEnrollmentMetadata>? intuneEnrollmentMetadata;
  /// Metadata used to generate draft package folder and scripts.
  final pulumi.Input<DraftPackageIntuneAppMetadata>? intuneMetadata;
  /// Specifies the package id from which the draft package copied.
  final pulumi.Input<String>? packageId;
  /// Tags of the package to be created.
  final pulumi.Input<Map<String, String>>? packageTags;
  /// The process name for script auto-fill. Will be used to identify the application process.
  final pulumi.Input<String>? processName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The source type.
  final pulumi.Input<String>? sourceType;
  /// Tab state.
  final pulumi.Input<TabState>? tabState;
  /// Specifies the target OSs of specific OS Update types.
  final pulumi.Input<List<TargetOSInfo>>? targetOSList;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;
  /// OOB, functional or flow driven. Mapped to the data in 'tests' property.
  final pulumi.Input<List<String>>? testTypes;
  /// The detailed test information.
  final pulumi.Input<List<Test>>? tests;
  /// Indicates whether user choose to enable script auto-fill.
  final pulumi.Input<bool>? useAutofill;
  /// Specifies whether a sample package should be used instead of the one uploaded by the user.
  final pulumi.Input<bool>? useSample;
  /// Application version
  final pulumi.Input<String>? version;

  /// Creates a new [DraftPackageArgs].
  /// [appFileName] The name of the app file.
  /// [applicationName] Application name
  /// [comments] Comments added by user.
  /// [draftPackageName] The resource name of the Test Base Draft Package.
  /// [editPackage] Specifies whether this draft package is used to edit a package.
  /// [executableLaunchCommand] The executable launch command for script auto-fill. Will be used to run the application.
  /// [firstPartyApps] The list of first party applications to test along with user application.
  /// [flightingRing] The flighting ring for feature update.
  /// [galleryApps] The list of gallery apps to test along with user application.
  /// [highlightedFiles] The highlight files in the package.
  /// [inplaceUpgradeOSPair] Specifies the baseline os and target os for inplace upgrade.
  /// [intuneEnrollmentMetadata] The metadata of Intune enrollment.
  /// [intuneMetadata] Metadata used to generate draft package folder and scripts.
  /// [packageId] Specifies the package id from which the draft package copied.
  /// [packageTags] Tags of the package to be created.
  /// [processName] The process name for script auto-fill. Will be used to identify the application process.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceType] The source type.
  /// [tabState] Tab state.
  /// [targetOSList] Specifies the target OSs of specific OS Update types.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  /// [testTypes] OOB, functional or flow driven. Mapped to the data in 'tests' property.
  /// [tests] The detailed test information.
  /// [useAutofill] Indicates whether user choose to enable script auto-fill.
  /// [useSample] Specifies whether a sample package should be used instead of the one uploaded by the user.
  /// [version] Application version
  DraftPackageArgs({
    this.appFileName,
    this.applicationName,
    this.comments,
    this.draftPackageName,
    this.editPackage,
    this.executableLaunchCommand,
    this.firstPartyApps,
    this.flightingRing,
    this.galleryApps,
    this.highlightedFiles,
    this.inplaceUpgradeOSPair,
    this.intuneEnrollmentMetadata,
    this.intuneMetadata,
    this.packageId,
    this.packageTags,
    this.processName,
    required this.resourceGroupName,
    this.sourceType,
    this.tabState,
    this.targetOSList,
    required this.testBaseAccountName,
    this.testTypes,
    this.tests,
    this.useAutofill,
    this.useSample,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appFileName': ?appFileName,
      'applicationName': ?applicationName,
      'comments': ?comments,
      'draftPackageName': ?draftPackageName,
      'editPackage': ?editPackage,
      'executableLaunchCommand': ?executableLaunchCommand,
      'firstPartyApps': ?pulumi.Input.mapOptionalInputValue<List<FirstPartyAppDefinition>, List<Map<String, dynamic>>>(firstPartyApps, (value) => pulumi.Input.encodeList<FirstPartyAppDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flightingRing': ?flightingRing,
      'galleryApps': ?pulumi.Input.mapOptionalInputValue<List<GalleryAppDefinition>, List<Map<String, dynamic>>>(galleryApps, (value) => pulumi.Input.encodeList<GalleryAppDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'highlightedFiles': ?pulumi.Input.mapOptionalInputValue<List<HighlightedFile>, List<Map<String, dynamic>>>(highlightedFiles, (value) => pulumi.Input.encodeList<HighlightedFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inplaceUpgradeOSPair': ?pulumi.Input.mapOptionalInputValue<InplaceUpgradeOSInfo, Map<String, dynamic>>(inplaceUpgradeOSPair, (value) => value.toMap()),
      'intuneEnrollmentMetadata': ?pulumi.Input.mapOptionalInputValue<IntuneEnrollmentMetadata, Map<String, dynamic>>(intuneEnrollmentMetadata, (value) => value.toMap()),
      'intuneMetadata': ?pulumi.Input.mapOptionalInputValue<DraftPackageIntuneAppMetadata, Map<String, dynamic>>(intuneMetadata, (value) => value.toMap()),
      'packageId': ?packageId,
      'packageTags': ?packageTags,
      'processName': ?processName,
      'resourceGroupName': resourceGroupName,
      'sourceType': ?sourceType,
      'tabState': ?pulumi.Input.mapOptionalInputValue<TabState, Map<String, dynamic>>(tabState, (value) => value.toMap()),
      'targetOSList': ?pulumi.Input.mapOptionalInputValue<List<TargetOSInfo>, List<Map<String, dynamic>>>(targetOSList, (value) => pulumi.Input.encodeList<TargetOSInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testBaseAccountName': testBaseAccountName,
      'testTypes': ?testTypes,
      'tests': ?pulumi.Input.mapOptionalInputValue<List<Test>, List<Map<String, dynamic>>>(tests, (value) => pulumi.Input.encodeList<Test, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useAutofill': ?useAutofill,
      'useSample': ?useSample,
      'version': ?version,
    };
  }

  factory DraftPackageArgs.fromMap(Map<String, dynamic> map) {
    return DraftPackageArgs(
      appFileName: map['appFileName'] == null ? null : (map['appFileName'] as String).input(),
      applicationName: map['applicationName'] == null ? null : (map['applicationName'] as String).input(),
      comments: map['comments'] == null ? null : (map['comments'] as String).input(),
      draftPackageName: map['draftPackageName'] == null ? null : (map['draftPackageName'] as String).input(),
      editPackage: map['editPackage'] == null ? null : (map['editPackage'] as bool).input(),
      executableLaunchCommand: map['executableLaunchCommand'] == null ? null : (map['executableLaunchCommand'] as String).input(),
      firstPartyApps: map['firstPartyApps'] == null ? null : (pulumi.Input.decodeList<FirstPartyAppDefinition>(map['firstPartyApps'], (value) => FirstPartyAppDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      flightingRing: map['flightingRing'] == null ? null : (map['flightingRing'] as String).input(),
      galleryApps: map['galleryApps'] == null ? null : (pulumi.Input.decodeList<GalleryAppDefinition>(map['galleryApps'], (value) => GalleryAppDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      highlightedFiles: map['highlightedFiles'] == null ? null : (pulumi.Input.decodeList<HighlightedFile>(map['highlightedFiles'], (value) => HighlightedFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inplaceUpgradeOSPair: map['inplaceUpgradeOSPair'] == null ? null : (InplaceUpgradeOSInfo.fromMap((map['inplaceUpgradeOSPair'] as Map).cast<String, dynamic>())).input(),
      intuneEnrollmentMetadata: map['intuneEnrollmentMetadata'] == null ? null : (IntuneEnrollmentMetadata.fromMap((map['intuneEnrollmentMetadata'] as Map).cast<String, dynamic>())).input(),
      intuneMetadata: map['intuneMetadata'] == null ? null : (DraftPackageIntuneAppMetadata.fromMap((map['intuneMetadata'] as Map).cast<String, dynamic>())).input(),
      packageId: map['packageId'] == null ? null : (map['packageId'] as String).input(),
      packageTags: map['packageTags'] == null ? null : ((map['packageTags'] as Map).cast<String, String>()).input(),
      processName: map['processName'] == null ? null : (map['processName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
      tabState: map['tabState'] == null ? null : (TabState.fromMap((map['tabState'] as Map).cast<String, dynamic>())).input(),
      targetOSList: map['targetOSList'] == null ? null : (pulumi.Input.decodeList<TargetOSInfo>(map['targetOSList'], (value) => TargetOSInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testBaseAccountName: (map['testBaseAccountName'] as String).input(),
      testTypes: map['testTypes'] == null ? null : ((map['testTypes'] as List).cast<String>()).input(),
      tests: map['tests'] == null ? null : (pulumi.Input.decodeList<Test>(map['tests'], (value) => Test.fromMap((value as Map).cast<String, dynamic>()))).input(),
      useAutofill: map['useAutofill'] == null ? null : (map['useAutofill'] as bool).input(),
      useSample: map['useSample'] == null ? null : (map['useSample'] as bool).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

