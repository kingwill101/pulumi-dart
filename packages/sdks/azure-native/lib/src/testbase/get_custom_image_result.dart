// ignore_for_file: unused_element, unnecessary_cast

import 'image_validation_results_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCustomImage.
class GetCustomImageResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The UTC timestamp when the custom image was published.
  final String? creationTime;
  /// Image definition name.
  final String? definitionName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// This property indicates the size of the VHD to be created.
  final double? osDiskImageSizeInGB;
  /// Product of the custom image.
  final String? product;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Release of the custom image OS.
  final String? release;
  /// The release version date of the release of the custom image OS.
  final String? releaseVersionDate;
  /// Custom image source type.
  final String? source;
  /// Status of the custom image.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The validation result of the custom image.
  final ImageValidationResultsResponse? validationResults;
  /// Image version name.
  final String? versionName;
  /// The file name of the associated VHD resource.
  final String? vhdFileName;
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
    this.azureApiVersion,
    this.creationTime,
    this.definitionName,
    this.id,
    this.name,
    this.osDiskImageSizeInGB,
    this.product,
    this.provisioningState,
    this.release,
    this.releaseVersionDate,
    String? source,
    this.status,
    this.systemData,
    this.type,
    this.validationResults,
    this.versionName,
    this.vhdFileName,
    this.vhdId,
  }) : source = source ?? 'VHD';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'definitionName': ?definitionName,
      'id': ?id,
      'name': ?name,
      'osDiskImageSizeInGB': ?osDiskImageSizeInGB,
      'product': ?product,
      'provisioningState': ?provisioningState,
      'release': ?release,
      'releaseVersionDate': ?releaseVersionDate,
      'source': ?source,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'validationResults': ?validationResults?.toMap(),
      'versionName': ?versionName,
      'vhdFileName': ?vhdFileName,
      'vhdId': ?vhdId,
    };
  }

  factory GetCustomImageResult.fromMap(Map<String, dynamic> map) {
    return GetCustomImageResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      definitionName: (() { final guardedValue = map['definitionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osDiskImageSizeInGB: (() { final guardedValue = map['osDiskImageSizeInGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseVersionDate: (() { final guardedValue = map['releaseVersionDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationResults: (() { final guardedValue = map['validationResults']; if (guardedValue == null) return null; return ImageValidationResultsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vhdFileName: (() { final guardedValue = map['vhdFileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vhdId: (() { final guardedValue = map['vhdId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
