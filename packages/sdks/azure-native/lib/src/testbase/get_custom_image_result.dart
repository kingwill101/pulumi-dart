// ignore_for_file: unused_element, unnecessary_cast

import 'image_validation_results_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCustomImage.
class GetCustomImageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The UTC timestamp when the custom image was published.
  final String creationTime;

  /// Image definition name.
  final String definitionName;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// This property indicates the size of the VHD to be created.
  final double osDiskImageSizeInGB;

  /// Product of the custom image.
  final String product;

  /// The provisioning state of the resource.
  final String provisioningState;

  /// Release of the custom image OS.
  final String release;

  /// The release version date of the release of the custom image OS.
  final String releaseVersionDate;

  /// Custom image source type.
  final String source;

  /// Status of the custom image.
  final String status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The validation result of the custom image.
  final ImageValidationResultsResponse validationResults;

  /// Image version name.
  final String versionName;

  /// The file name of the associated VHD resource.
  final String vhdFileName;

  /// The Id of the associated VHD resource.
  final String? vhdId;

  /// Creates a new [GetCustomImageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] The UTC timestamp when the custom image was published.
  /// [definitionName] Image definition name.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [osDiskImageSizeInGB] This property indicates the size of the VHD to be created.
  /// [product] Product of the custom image.
  /// [provisioningState] The provisioning state of the resource.
  /// [release] Release of the custom image OS.
  /// [releaseVersionDate] The release version date of the release of the custom image OS.
  /// [source] Custom image source type.
  /// [status] Status of the custom image.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationResults] The validation result of the custom image.
  /// [versionName] Image version name.
  /// [vhdFileName] The file name of the associated VHD resource.
  /// [vhdId] The Id of the associated VHD resource.
  GetCustomImageResult({
    required this.azureApiVersion,
    required this.creationTime,
    required this.definitionName,
    required this.id,
    required this.name,
    required this.osDiskImageSizeInGB,
    required this.product,
    required this.provisioningState,
    required this.release,
    required this.releaseVersionDate,
    required this.source,
    required this.status,
    required this.systemData,
    required this.type,
    required this.validationResults,
    required this.versionName,
    required this.vhdFileName,
    this.vhdId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'definitionName': definitionName,
      'id': id,
      'name': name,
      'osDiskImageSizeInGB': osDiskImageSizeInGB,
      'product': product,
      'provisioningState': provisioningState,
      'release': release,
      'releaseVersionDate': releaseVersionDate,
      'source': source,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
      'validationResults': validationResults.toMap(),
      'versionName': versionName,
      'vhdFileName': vhdFileName,
      'vhdId': ?vhdId,
    };
  }

  factory GetCustomImageResult.fromMap(Map<String, dynamic> map) {
    return GetCustomImageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      definitionName: map['definitionName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      osDiskImageSizeInGB: map['osDiskImageSizeInGB'] as double,
      product: map['product'] as String,
      provisioningState: map['provisioningState'] as String,
      release: map['release'] as String,
      releaseVersionDate: map['releaseVersionDate'] as String,
      source: map['source'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      validationResults: ImageValidationResultsResponse.fromMap(
        (map['validationResults']! as Map).cast<String, dynamic>(),
      ),
      versionName: map['versionName'] as String,
      vhdFileName: map['vhdFileName'] as String,
      vhdId: (() {
        final guardedValue = map['vhdId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
