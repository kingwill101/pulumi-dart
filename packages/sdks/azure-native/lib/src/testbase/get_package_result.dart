// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'first_party_app_definition_response.dart';
import 'gallery_app_definition_response.dart';
import 'inplace_upgrade_osinfo_response.dart';
import 'intune_enrollment_metadata_response.dart';
import 'package_validation_result_response.dart';
import 'system_data_response.dart';
import 'target_osinfo_response.dart';
import 'test_response.dart';

/// Result data returned by getPackage.
class GetPackageResult {
  /// Application name
  final String applicationName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The file path of the package.
  final String? blobPath;
  /// The id of draft package. Used to create or update this package from a draft package.
  final String? draftPackageId;
  /// The list of first party applications to test along with user application.
  final List<FirstPartyAppDefinitionResponse>? firstPartyApps;
  /// The flighting ring for feature update.
  final String? flightingRing;
  /// The list of gallery apps to test along with user application.
  final List<GalleryAppDefinitionResponse> galleryApps;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Specifies the baseline os and target os for inplace upgrade.
  final InplaceUpgradeOSInfoResponse? inplaceUpgradeOSPair;
  /// The metadata of Intune enrollment.
  final IntuneEnrollmentMetadataResponse? intuneEnrollmentMetadata;
  /// Flag showing that whether the package is enabled. It doesn't schedule test for package which is not enabled.
  final bool isEnabled;
  /// The UTC timestamp when the package was last modified.
  final String lastModifiedTime;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the package.
  final String packageStatus;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Specifies the target OSs of specific OS Update types.
  final List<TargetOSInfoResponse>? targetOSList;
  /// OOB, functional or flow driven. Mapped to the data in 'tests' property.
  final List<String> testTypes;
  /// The detailed test information.
  final List<TestResponse>? tests;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The validation results. There's validation on package when it's created or updated.
  final List<PackageValidationResultResponse> validationResults;
  /// Application version
  final String version;

  /// Creates a new [GetPackageResult].
  /// [applicationName] Application name
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobPath] The file path of the package.
  /// [draftPackageId] The id of draft package. Used to create or update this package from a draft package.
  /// [firstPartyApps] The list of first party applications to test along with user application.
  /// [flightingRing] The flighting ring for feature update.
  /// [galleryApps] The list of gallery apps to test along with user application.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inplaceUpgradeOSPair] Specifies the baseline os and target os for inplace upgrade.
  /// [intuneEnrollmentMetadata] The metadata of Intune enrollment.
  /// [isEnabled] Flag showing that whether the package is enabled. It doesn't schedule test for package which is not enabled.
  /// [lastModifiedTime] The UTC timestamp when the package was last modified.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [packageStatus] The status of the package.
  /// [provisioningState] The provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [targetOSList] Specifies the target OSs of specific OS Update types.
  /// [testTypes] OOB, functional or flow driven. Mapped to the data in 'tests' property.
  /// [tests] The detailed test information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationResults] The validation results. There's validation on package when it's created or updated.
  /// [version] Application version
  const GetPackageResult({
    required this.applicationName,
    required this.azureApiVersion,
    this.blobPath,
    this.draftPackageId,
    this.firstPartyApps,
    this.flightingRing,
    required this.galleryApps,
    required this.id,
    this.inplaceUpgradeOSPair,
    this.intuneEnrollmentMetadata,
    required this.isEnabled,
    required this.lastModifiedTime,
    required this.location,
    required this.name,
    required this.packageStatus,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    this.targetOSList,
    required this.testTypes,
    this.tests,
    required this.type,
    required this.validationResults,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'azureApiVersion': azureApiVersion,
      'blobPath': ?blobPath,
      'draftPackageId': ?draftPackageId,
      'firstPartyApps': ?(() { final guardedValue = firstPartyApps; if (guardedValue == null) return null; return pulumi.Input.encodeList<FirstPartyAppDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'flightingRing': ?flightingRing,
      'galleryApps': pulumi.Input.encodeList<GalleryAppDefinitionResponse, Map<String, dynamic>>(galleryApps, (value) => value.toMap()),
      'id': id,
      'inplaceUpgradeOSPair': ?inplaceUpgradeOSPair?.toMap(),
      'intuneEnrollmentMetadata': ?intuneEnrollmentMetadata?.toMap(),
      'isEnabled': isEnabled,
      'lastModifiedTime': lastModifiedTime,
      'location': location,
      'name': name,
      'packageStatus': packageStatus,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetOSList': ?(() { final guardedValue = targetOSList; if (guardedValue == null) return null; return pulumi.Input.encodeList<TargetOSInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'testTypes': testTypes,
      'tests': ?(() { final guardedValue = tests; if (guardedValue == null) return null; return pulumi.Input.encodeList<TestResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
      'validationResults': pulumi.Input.encodeList<PackageValidationResultResponse, Map<String, dynamic>>(validationResults, (value) => value.toMap()),
      'version': version,
    };
  }

  factory GetPackageResult.fromMap(Map<String, dynamic> map) {
    return GetPackageResult(
      applicationName: map['applicationName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      blobPath: (() { final guardedValue = map['blobPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      draftPackageId: (() { final guardedValue = map['draftPackageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstPartyApps: (() { final guardedValue = map['firstPartyApps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirstPartyAppDefinitionResponse>(guardedValue, (value) => FirstPartyAppDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      flightingRing: (() { final guardedValue = map['flightingRing']; if (guardedValue == null) return null; return guardedValue as String; })(),
      galleryApps: pulumi.Input.decodeList<GalleryAppDefinitionResponse>(map['galleryApps']!, (value) => GalleryAppDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      inplaceUpgradeOSPair: (() { final guardedValue = map['inplaceUpgradeOSPair']; if (guardedValue == null) return null; return InplaceUpgradeOSInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      intuneEnrollmentMetadata: (() { final guardedValue = map['intuneEnrollmentMetadata']; if (guardedValue == null) return null; return IntuneEnrollmentMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isEnabled: map['isEnabled'] as bool,
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      packageStatus: map['packageStatus'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetOSList: (() { final guardedValue = map['targetOSList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetOSInfoResponse>(guardedValue, (value) => TargetOSInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      testTypes: (map['testTypes'] as List).cast<String>(),
      tests: (() { final guardedValue = map['tests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TestResponse>(guardedValue, (value) => TestResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
      validationResults: pulumi.Input.decodeList<PackageValidationResultResponse>(map['validationResults']!, (value) => PackageValidationResultResponse.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}
