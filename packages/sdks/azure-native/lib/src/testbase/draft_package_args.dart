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
  const DraftPackageArgs({
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
      appFileName: (() { final guardedValue = map['appFileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      draftPackageName: (() { final guardedValue = map['draftPackageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      editPackage: (() { final guardedValue = map['editPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      executableLaunchCommand: (() { final guardedValue = map['executableLaunchCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstPartyApps: (() { final guardedValue = map['firstPartyApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirstPartyAppDefinition>(guardedValue, (value) => FirstPartyAppDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      flightingRing: (() { final guardedValue = map['flightingRing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryApps: (() { final guardedValue = map['galleryApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryAppDefinition>(guardedValue, (value) => GalleryAppDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      highlightedFiles: (() { final guardedValue = map['highlightedFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HighlightedFile>(guardedValue, (value) => HighlightedFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inplaceUpgradeOSPair: (() { final guardedValue = map['inplaceUpgradeOSPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InplaceUpgradeOSInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intuneEnrollmentMetadata: (() { final guardedValue = map['intuneEnrollmentMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntuneEnrollmentMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intuneMetadata: (() { final guardedValue = map['intuneMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DraftPackageIntuneAppMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageId: (() { final guardedValue = map['packageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageTags: (() { final guardedValue = map['packageTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      processName: (() { final guardedValue = map['processName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tabState: (() { final guardedValue = map['tabState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TabState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetOSList: (() { final guardedValue = map['targetOSList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetOSInfo>(guardedValue, (value) => TargetOSInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
      testTypes: (() { final guardedValue = map['testTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tests: (() { final guardedValue = map['tests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Test>(guardedValue, (value) => Test.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useAutofill: (() { final guardedValue = map['useAutofill']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useSample: (() { final guardedValue = map['useSample']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
