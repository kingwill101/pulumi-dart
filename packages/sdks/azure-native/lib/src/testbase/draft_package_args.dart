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
    pulumi.Output<String>? appFileName,
    pulumi.Output<String>? applicationName,
    pulumi.Output<String>? comments,
    pulumi.Output<String>? draftPackageName,
    pulumi.Output<bool>? editPackage,
    pulumi.Output<String>? executableLaunchCommand,
    pulumi.Output<List<FirstPartyAppDefinition>>? firstPartyApps,
    pulumi.Output<String>? flightingRing,
    pulumi.Output<List<GalleryAppDefinition>>? galleryApps,
    pulumi.Output<List<HighlightedFile>>? highlightedFiles,
    pulumi.Output<InplaceUpgradeOSInfo>? inplaceUpgradeOSPair,
    pulumi.Output<IntuneEnrollmentMetadata>? intuneEnrollmentMetadata,
    pulumi.Output<DraftPackageIntuneAppMetadata>? intuneMetadata,
    pulumi.Output<String>? packageId,
    pulumi.Output<Map<String, String>>? packageTags,
    pulumi.Output<String>? processName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceType,
    pulumi.Output<TabState>? tabState,
    pulumi.Output<List<TargetOSInfo>>? targetOSList,
    required pulumi.Output<String> testBaseAccountName,
    pulumi.Output<List<String>>? testTypes,
    pulumi.Output<List<Test>>? tests,
    pulumi.Output<bool>? useAutofill,
    pulumi.Output<bool>? useSample,
    pulumi.Output<String>? version,
  }) :
      appFileName = pulumi.Input.asOptionalInput<String>(appFileName),
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      comments = pulumi.Input.asOptionalInput<String>(comments),
      draftPackageName = pulumi.Input.asOptionalInput<String>(draftPackageName),
      editPackage = pulumi.Input.asOptionalInput<bool>(editPackage),
      executableLaunchCommand = pulumi.Input.asOptionalInput<String>(executableLaunchCommand),
      firstPartyApps = pulumi.Input.asOptionalInput<List<FirstPartyAppDefinition>>(firstPartyApps),
      flightingRing = pulumi.Input.asOptionalInput<String>(flightingRing),
      galleryApps = pulumi.Input.asOptionalInput<List<GalleryAppDefinition>>(galleryApps),
      highlightedFiles = pulumi.Input.asOptionalInput<List<HighlightedFile>>(highlightedFiles),
      inplaceUpgradeOSPair = pulumi.Input.asOptionalInput<InplaceUpgradeOSInfo>(inplaceUpgradeOSPair),
      intuneEnrollmentMetadata = pulumi.Input.asOptionalInput<IntuneEnrollmentMetadata>(intuneEnrollmentMetadata),
      intuneMetadata = pulumi.Input.asOptionalInput<DraftPackageIntuneAppMetadata>(intuneMetadata),
      packageId = pulumi.Input.asOptionalInput<String>(packageId),
      packageTags = pulumi.Input.asOptionalInput<Map<String, String>>(packageTags),
      processName = pulumi.Input.asOptionalInput<String>(processName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      tabState = pulumi.Input.asOptionalInput<TabState>(tabState),
      targetOSList = pulumi.Input.asOptionalInput<List<TargetOSInfo>>(targetOSList),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName),
      testTypes = pulumi.Input.asOptionalInput<List<String>>(testTypes),
      tests = pulumi.Input.asOptionalInput<List<Test>>(tests),
      useAutofill = pulumi.Input.asOptionalInput<bool>(useAutofill),
      useSample = pulumi.Input.asOptionalInput<bool>(useSample),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      appFileName: map['appFileName'] == null ? null : pulumi.Output.create<String>(map['appFileName'] as String),
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      comments: map['comments'] == null ? null : pulumi.Output.create<String>(map['comments'] as String),
      draftPackageName: map['draftPackageName'] == null ? null : pulumi.Output.create<String>(map['draftPackageName'] as String),
      editPackage: map['editPackage'] == null ? null : pulumi.Output.create<bool>(map['editPackage'] as bool),
      executableLaunchCommand: map['executableLaunchCommand'] == null ? null : pulumi.Output.create<String>(map['executableLaunchCommand'] as String),
      firstPartyApps: map['firstPartyApps'] == null ? null : pulumi.Output.create<List<FirstPartyAppDefinition>>(pulumi.Input.decodeList<FirstPartyAppDefinition>(map['firstPartyApps'], (value) => FirstPartyAppDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      flightingRing: map['flightingRing'] == null ? null : pulumi.Output.create<String>(map['flightingRing'] as String),
      galleryApps: map['galleryApps'] == null ? null : pulumi.Output.create<List<GalleryAppDefinition>>(pulumi.Input.decodeList<GalleryAppDefinition>(map['galleryApps'], (value) => GalleryAppDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      highlightedFiles: map['highlightedFiles'] == null ? null : pulumi.Output.create<List<HighlightedFile>>(pulumi.Input.decodeList<HighlightedFile>(map['highlightedFiles'], (value) => HighlightedFile.fromMap((value as Map).cast<String, dynamic>()))),
      inplaceUpgradeOSPair: map['inplaceUpgradeOSPair'] == null ? null : pulumi.Output.create<InplaceUpgradeOSInfo>(InplaceUpgradeOSInfo.fromMap((map['inplaceUpgradeOSPair'] as Map).cast<String, dynamic>())),
      intuneEnrollmentMetadata: map['intuneEnrollmentMetadata'] == null ? null : pulumi.Output.create<IntuneEnrollmentMetadata>(IntuneEnrollmentMetadata.fromMap((map['intuneEnrollmentMetadata'] as Map).cast<String, dynamic>())),
      intuneMetadata: map['intuneMetadata'] == null ? null : pulumi.Output.create<DraftPackageIntuneAppMetadata>(DraftPackageIntuneAppMetadata.fromMap((map['intuneMetadata'] as Map).cast<String, dynamic>())),
      packageId: map['packageId'] == null ? null : pulumi.Output.create<String>(map['packageId'] as String),
      packageTags: map['packageTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['packageTags'] as Map).cast<String, String>()),
      processName: map['processName'] == null ? null : pulumi.Output.create<String>(map['processName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      tabState: map['tabState'] == null ? null : pulumi.Output.create<TabState>(TabState.fromMap((map['tabState'] as Map).cast<String, dynamic>())),
      targetOSList: map['targetOSList'] == null ? null : pulumi.Output.create<List<TargetOSInfo>>(pulumi.Input.decodeList<TargetOSInfo>(map['targetOSList'], (value) => TargetOSInfo.fromMap((value as Map).cast<String, dynamic>()))),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
      testTypes: map['testTypes'] == null ? null : pulumi.Output.create<List<String>>((map['testTypes'] as List).cast<String>()),
      tests: map['tests'] == null ? null : pulumi.Output.create<List<Test>>(pulumi.Input.decodeList<Test>(map['tests'], (value) => Test.fromMap((value as Map).cast<String, dynamic>()))),
      useAutofill: map['useAutofill'] == null ? null : pulumi.Output.create<bool>(map['useAutofill'] as bool),
      useSample: map['useSample'] == null ? null : pulumi.Output.create<bool>(map['useSample'] as bool),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

