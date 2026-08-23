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
  const GetDraftPackageResult({
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
      'firstPartyApps': ?(() { final guardedValue = firstPartyApps; if (guardedValue == null) return null; return pulumi.Input.encodeList<FirstPartyAppDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'flightingRing': ?flightingRing,
      'galleryApps': ?(() { final guardedValue = galleryApps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GalleryAppDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'highlightedFiles': ?(() { final guardedValue = highlightedFiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<HighlightedFileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'inplaceUpgradeOSPair': ?inplaceUpgradeOSPair?.toMap(),
      'intuneEnrollmentMetadata': ?intuneEnrollmentMetadata?.toMap(),
      'intuneMetadata': ?intuneMetadata?.toMap(),
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'packageId': ?packageId,
      'packageTags': ?packageTags,
      'processName': ?processName,
      'provisioningState': provisioningState,
      'sourceType': ?sourceType,
      'systemData': systemData.toMap(),
      'tabState': ?tabState?.toMap(),
      'targetOSList': ?(() { final guardedValue = targetOSList; if (guardedValue == null) return null; return pulumi.Input.encodeList<TargetOSInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'testTypes': ?testTypes,
      'tests': ?(() { final guardedValue = tests; if (guardedValue == null) return null; return pulumi.Input.encodeList<TestResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
      'useAutofill': ?useAutofill,
      'useSample': ?useSample,
      'version': ?version,
      'workingPath': workingPath,
    };
  }

  factory GetDraftPackageResult.fromMap(Map<String, dynamic> map) {
    return GetDraftPackageResult(
      appFileName: (() { final guardedValue = map['appFileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return guardedValue as String; })(),
      draftPackagePath: map['draftPackagePath'] as String,
      editPackage: (() { final guardedValue = map['editPackage']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      executableLaunchCommand: (() { final guardedValue = map['executableLaunchCommand']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstPartyApps: (() { final guardedValue = map['firstPartyApps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirstPartyAppDefinitionResponse>(guardedValue, (value) => FirstPartyAppDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      flightingRing: (() { final guardedValue = map['flightingRing']; if (guardedValue == null) return null; return guardedValue as String; })(),
      galleryApps: (() { final guardedValue = map['galleryApps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryAppDefinitionResponse>(guardedValue, (value) => GalleryAppDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      highlightedFiles: (() { final guardedValue = map['highlightedFiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HighlightedFileResponse>(guardedValue, (value) => HighlightedFileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      inplaceUpgradeOSPair: (() { final guardedValue = map['inplaceUpgradeOSPair']; if (guardedValue == null) return null; return InplaceUpgradeOSInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      intuneEnrollmentMetadata: (() { final guardedValue = map['intuneEnrollmentMetadata']; if (guardedValue == null) return null; return IntuneEnrollmentMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      intuneMetadata: (() { final guardedValue = map['intuneMetadata']; if (guardedValue == null) return null; return DraftPackageIntuneAppMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      packageId: (() { final guardedValue = map['packageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageTags: (() { final guardedValue = map['packageTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      processName: (() { final guardedValue = map['processName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tabState: (() { final guardedValue = map['tabState']; if (guardedValue == null) return null; return TabStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetOSList: (() { final guardedValue = map['targetOSList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetOSInfoResponse>(guardedValue, (value) => TargetOSInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      testTypes: (() { final guardedValue = map['testTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tests: (() { final guardedValue = map['tests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TestResponse>(guardedValue, (value) => TestResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
      useAutofill: (() { final guardedValue = map['useAutofill']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      useSample: (() { final guardedValue = map['useSample']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workingPath: map['workingPath'] as String,
    );
  }
}
