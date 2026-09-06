// ignore_for_file: unused_element, unnecessary_cast

import 'application_properties_response.dart';
import 'saas_properties_response.dart';
import 'status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOperatorApiConnection.
class GetOperatorApiConnectionResult {
  /// Type of the account the user has with the Operator's Network API infrastructure. AzureManaged | UserManaged.
  final String? accountType;
  /// Application ID of the App Developer that is registered with the Operator in a specific country/region.
  final String? appId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Network API for the current operator in the country/region provided in the linked Operator API Plan.
  final String? camaraApiName;
  /// Details about the Application that would use the Operator's Network APIs.
  final ApplicationPropertiesResponse? configuredApplication;
  /// Reference to the APC Gateway resource ID.
  final String? gatewayId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Reference to the Operator API Plan Resource ID.
  final String? operatorApiPlanId;
  /// Name of the Operator in the linked Operator API Plan belongs to.
  final String? operatorName;
  /// The status of the last operation.
  final String? provisioningState;
  /// Details about the SaaS offer purchased from the marketplace.
  final SaasPropertiesResponse? saasProperties;
  /// The status of the OperatorApiConnection resource.
  final StatusResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetOperatorApiConnectionResult].
  /// [accountType] Type of the account the user has with the Operator's Network API infrastructure. AzureManaged | UserManaged.
  /// [appId] Application ID of the App Developer that is registered with the Operator in a specific country/region.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [camaraApiName] The Network API for the current operator in the country/region provided in the linked Operator API Plan.
  /// [configuredApplication] Details about the Application that would use the Operator's Network APIs.
  /// [gatewayId] Reference to the APC Gateway resource ID.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [operatorApiPlanId] Reference to the Operator API Plan Resource ID.
  /// [operatorName] Name of the Operator in the linked Operator API Plan belongs to.
  /// [provisioningState] The status of the last operation.
  /// [saasProperties] Details about the SaaS offer purchased from the marketplace.
  /// [status] The status of the OperatorApiConnection resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetOperatorApiConnectionResult({
    this.accountType,
    this.appId,
    this.azureApiVersion,
    this.camaraApiName,
    this.configuredApplication,
    this.gatewayId,
    this.id,
    this.location,
    this.name,
    this.operatorApiPlanId,
    this.operatorName,
    this.provisioningState,
    this.saasProperties,
    this.status,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountType': ?accountType,
      'appId': ?appId,
      'azureApiVersion': ?azureApiVersion,
      'camaraApiName': ?camaraApiName,
      'configuredApplication': ?configuredApplication?.toMap(),
      'gatewayId': ?gatewayId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'operatorApiPlanId': ?operatorApiPlanId,
      'operatorName': ?operatorName,
      'provisioningState': ?provisioningState,
      'saasProperties': ?saasProperties?.toMap(),
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetOperatorApiConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetOperatorApiConnectionResult(
      accountType: (() { final guardedValue = map['accountType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      camaraApiName: (() { final guardedValue = map['camaraApiName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configuredApplication: (() { final guardedValue = map['configuredApplication']; if (guardedValue == null) return null; return ApplicationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatorApiPlanId: (() { final guardedValue = map['operatorApiPlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatorName: (() { final guardedValue = map['operatorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      saasProperties: (() { final guardedValue = map['saasProperties']; if (guardedValue == null) return null; return SaasPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
