// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'draft_package_intune_app_metadata_response.dart';
import 'first_party_app_definition_response.dart';
import 'gallery_app_definition_response.dart';
import 'highlighted_file_response.dart';
import 'inplace_upgrade_osinfo_response.dart';
import 'intune_enrollment_metadata_response.dart';
import 'system_data_response.dart';
import 'tab_state_response.dart';
import 'target_osinfo_response.dart';
import 'test_response.dart';

/// Result data returned by getDraftPackage.
class GetDraftPackageResult {
  /// The name of the app file.
  final String? appFileName;
  /// Application name
  final String? applicationName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Comments added by user.
  final String? comments;
  /// The relative path of the folder hosting package files.
  final String draftPackagePath;
  /// Specifies whether this draft package is used to edit a package.
  final bool? editPackage;
  /// The executable launch command for script auto-fill. Will be used to run the application.
  final String? executableLaunchCommand;
  /// The list of first party applications to test along with user application.
  final List<FirstPartyAppDefinitionResponse>? firstPartyApps;
  /// The flighting ring for feature update.
  final String? flightingRing;
  /// The list of gallery apps to test along with user application.
  final List<GalleryAppDefinitionResponse>? galleryApps;
  /// The highlight files in the package.
  final List<HighlightedFileResponse>? highlightedFiles;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Specifies the baseline os and target os for inplace upgrade.
  final InplaceUpgradeOSInfoResponse? inplaceUpgradeOSPair;
  /// The metadata of Intune enrollment.
  final IntuneEnrollmentMetadataResponse? intuneEnrollmentMetadata;
  /// Metadata used to generate draft package folder and scripts.
  final DraftPackageIntuneAppMetadataResponse? intuneMetadata;
  /// The UTC timestamp when the package was last modified.
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Specifies the package id from which the draft package copied.
  final String? packageId;
  /// Tags of the package to be created.
  final Map<String, String>? packageTags;
  /// The process name for script auto-fill. Will be used to identify the application process.
  final String? processName;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The source type.
  final String? sourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Tab state.
  final TabStateResponse? tabState;
  /// Specifies the target OSs of specific OS Update types.
  final List<TargetOSInfoResponse>? targetOSList;
  /// OOB, functional or flow driven. Mapped to the data in 'tests' property.
  final List<String>? testTypes;
  /// The detailed test information.
  final List<TestResponse>? tests;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Indicates whether user choose to enable script auto-fill.
  final bool? useAutofill;
  /// Specifies whether a sample package should be used instead of the one uploaded by the user.
  final bool? useSample;
  /// Application version
  final String? version;
  /// The relative path for a temporarily folder for package creation work.
  final String workingPath;

  /// Creates a new [GetDraftPackageResult].
  /// [appFileName] The name of the app file.
  /// [applicationName] Application name
  /// [azureApiVersion] The Azure API version of the resource.
  /// [comments] Comments added by user.
  /// [draftPackagePath] The relative path of the folder hosting package files.
  /// [editPackage] Specifies whether this draft package is used to edit a package.
  /// [executableLaunchCommand] The executable launch command for script auto-fill. Will be used to run the application.
  /// [firstPartyApps] The list of first party applications to test along with user application.
  /// [flightingRing] The flighting ring for feature update.
  /// [galleryApps] The list of gallery apps to test along with user application.
  /// [highlightedFiles] The highlight files in the package.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inplaceUpgradeOSPair] Specifies the baseline os and target os for inplace upgrade.
  /// [intuneEnrollmentMetadata] The metadata of Intune enrollment.
  /// [intuneMetadata] Metadata used to generate draft package folder and scripts.
  /// [lastModifiedTime] The UTC timestamp when the package was last modified.
  /// [name] The name of the resource
  /// [packageId] Specifies the package id from which the draft package copied.
  /// [packageTags] Tags of the package to be created.
  /// [processName] The process name for script auto-fill. Will be used to identify the application process.
  /// [provisioningState] The provisioning state of the resource.
  /// [sourceType] The source type.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tabState] Tab state.
  /// [targetOSList] Specifies the target OSs of specific OS Update types.
  /// [testTypes] OOB, functional or flow driven. Mapped to the data in 'tests' property.
  /// [tests] The detailed test information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useAutofill] Indicates whether user choose to enable script auto-fill.
  /// [useSample] Specifies whether a sample package should be used instead of the one uploaded by the user.
  /// [version] Application version
  /// [workingPath] The relative path for a temporarily folder for package creation work.
  GetDraftPackageResult({
    this.appFileName,
    this.applicationName,
    required this.azureApiVersion,
    this.comments,
    required this.draftPackagePath,
    this.editPackage,
    this.executableLaunchCommand,
    this.firstPartyApps,
    this.flightingRing,
    this.galleryApps,
    this.highlightedFiles,
    required this.id,
    this.inplaceUpgradeOSPair,
    this.intuneEnrollmentMetadata,
    this.intuneMetadata,
    required this.lastModifiedTime,
    required this.name,
    this.packageId,
    this.packageTags,
    this.processName,
    required this.provisioningState,
    this.sourceType,
    required this.systemData,
    this.tabState,
    this.targetOSList,
    this.testTypes,
    this.tests,
    required this.type,
    this.useAutofill,
    this.useSample,
    this.version,
    required this.workingPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appFileName': ?appFileName,
      'applicationName': ?applicationName,
      'azureApiVersion': azureApiVersion,
      'comments': ?comments,
      'draftPackagePath': draftPackagePath,
      'editPackage': ?editPackage,
      'executableLaunchCommand': ?executableLaunchCommand,
      'firstPartyApps': ?firstPartyApps == null ? null : pulumi.Input.encodeList<FirstPartyAppDefinitionResponse, Map<String, dynamic>>(firstPartyApps!, (value) => value.toMap()),
      'flightingRing': ?flightingRing,
      'galleryApps': ?galleryApps == null ? null : pulumi.Input.encodeList<GalleryAppDefinitionResponse, Map<String, dynamic>>(galleryApps!, (value) => value.toMap()),
      'highlightedFiles': ?highlightedFiles == null ? null : pulumi.Input.encodeList<HighlightedFileResponse, Map<String, dynamic>>(highlightedFiles!, (value) => value.toMap()),
      'id': id,
      'inplaceUpgradeOSPair': ?inplaceUpgradeOSPair == null ? null : inplaceUpgradeOSPair!.toMap(),
      'intuneEnrollmentMetadata': ?intuneEnrollmentMetadata == null ? null : intuneEnrollmentMetadata!.toMap(),
      'intuneMetadata': ?intuneMetadata == null ? null : intuneMetadata!.toMap(),
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'packageId': ?packageId,
      'packageTags': ?packageTags,
      'processName': ?processName,
      'provisioningState': provisioningState,
      'sourceType': ?sourceType,
      'systemData': systemData.toMap(),
      'tabState': ?tabState == null ? null : tabState!.toMap(),
      'targetOSList': ?targetOSList == null ? null : pulumi.Input.encodeList<TargetOSInfoResponse, Map<String, dynamic>>(targetOSList!, (value) => value.toMap()),
      'testTypes': ?testTypes,
      'tests': ?tests == null ? null : pulumi.Input.encodeList<TestResponse, Map<String, dynamic>>(tests!, (value) => value.toMap()),
      'type': type,
      'useAutofill': ?useAutofill,
      'useSample': ?useSample,
      'version': ?version,
      'workingPath': workingPath,
    };
  }

  factory GetDraftPackageResult.fromMap(Map<String, dynamic> map) {
    return GetDraftPackageResult(
      appFileName: map['appFileName'] == null ? null : map['appFileName']! as String,
      applicationName: map['applicationName'] == null ? null : map['applicationName']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      comments: map['comments'] == null ? null : map['comments']! as String,
      draftPackagePath: map['draftPackagePath'] as String,
      editPackage: map['editPackage'] == null ? null : map['editPackage']! as bool,
      executableLaunchCommand: map['executableLaunchCommand'] == null ? null : map['executableLaunchCommand']! as String,
      firstPartyApps: map['firstPartyApps'] == null ? null : pulumi.Input.decodeList<FirstPartyAppDefinitionResponse>(map['firstPartyApps']!, (value) => FirstPartyAppDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      flightingRing: map['flightingRing'] == null ? null : map['flightingRing']! as String,
      galleryApps: map['galleryApps'] == null ? null : pulumi.Input.decodeList<GalleryAppDefinitionResponse>(map['galleryApps']!, (value) => GalleryAppDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      highlightedFiles: map['highlightedFiles'] == null ? null : pulumi.Input.decodeList<HighlightedFileResponse>(map['highlightedFiles']!, (value) => HighlightedFileResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      inplaceUpgradeOSPair: map['inplaceUpgradeOSPair'] == null ? null : InplaceUpgradeOSInfoResponse.fromMap((map['inplaceUpgradeOSPair']! as Map).cast<String, dynamic>()),
      intuneEnrollmentMetadata: map['intuneEnrollmentMetadata'] == null ? null : IntuneEnrollmentMetadataResponse.fromMap((map['intuneEnrollmentMetadata']! as Map).cast<String, dynamic>()),
      intuneMetadata: map['intuneMetadata'] == null ? null : DraftPackageIntuneAppMetadataResponse.fromMap((map['intuneMetadata']! as Map).cast<String, dynamic>()),
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      packageId: map['packageId'] == null ? null : map['packageId']! as String,
      packageTags: map['packageTags'] == null ? null : (map['packageTags']! as Map).cast<String, String>(),
      processName: map['processName'] == null ? null : map['processName']! as String,
      provisioningState: map['provisioningState'] as String,
      sourceType: map['sourceType'] == null ? null : map['sourceType']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tabState: map['tabState'] == null ? null : TabStateResponse.fromMap((map['tabState']! as Map).cast<String, dynamic>()),
      targetOSList: map['targetOSList'] == null ? null : pulumi.Input.decodeList<TargetOSInfoResponse>(map['targetOSList']!, (value) => TargetOSInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      testTypes: map['testTypes'] == null ? null : (map['testTypes']! as List).cast<String>(),
      tests: map['tests'] == null ? null : pulumi.Input.decodeList<TestResponse>(map['tests']!, (value) => TestResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      useAutofill: map['useAutofill'] == null ? null : map['useAutofill']! as bool,
      useSample: map['useSample'] == null ? null : map['useSample']! as bool,
      version: map['version'] == null ? null : map['version']! as String,
      workingPath: map['workingPath'] as String,
    );
  }
}

