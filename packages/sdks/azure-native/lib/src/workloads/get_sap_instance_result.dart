// ignore_for_file: unused_element, unnecessary_cast

import 'sapmigrate_error_sap_instance_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapInstance.
class GetSapInstanceResult {
  /// Enter a business function/department identifier to group multiple SIDs.
  final String application;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Environment; PRD, QA, DEV, etc to which SAP system belongs to. Select from the list of available dropdown values.
  final String environment;
  /// Defines the errors related to SAP Instance resource.
  final SAPMigrateErrorSapInstanceResponse errors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// This is the SID of the production system in a landscape.  An SAP system could itself be a production SID or a part of a landscape with a different Production SID. This field can be used to relate non-prod SIDs, other components, SID (WEBDISP) to the prod SID. Enter the value of Production SID.
  final String landscapeSid;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// This is the SID of SAP System. Keeping this not equal to ID as different landscapes can have repeated System SID IDs.
  final String systemSid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSapInstanceResult].
  /// [application] Enter a business function/department identifier to group multiple SIDs.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [environment] The Environment; PRD, QA, DEV, etc to which SAP system belongs to. Select from the list of available dropdown values.
  /// [errors] Defines the errors related to SAP Instance resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [landscapeSid] This is the SID of the production system in a landscape.  An SAP system could itself be a production SID or a part of a landscape with a different Production SID. This field can be used to relate non-prod SIDs, other components, SID (WEBDISP) to the prod SID. Enter the value of Production SID.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemSid] This is the SID of SAP System. Keeping this not equal to ID as different landscapes can have repeated System SID IDs.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSapInstanceResult({
    required this.application,
    required this.azureApiVersion,
    required this.environment,
    required this.errors,
    required this.id,
    required this.landscapeSid,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.systemSid,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'azureApiVersion': azureApiVersion,
      'environment': environment,
      'errors': errors.toMap(),
      'id': id,
      'landscapeSid': landscapeSid,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'systemSid': systemSid,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSapInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSapInstanceResult(
      application: map['application'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      environment: map['environment'] as String,
      errors: SAPMigrateErrorSapInstanceResponse.fromMap((map['errors']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      landscapeSid: map['landscapeSid'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      systemSid: map['systemSid'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
