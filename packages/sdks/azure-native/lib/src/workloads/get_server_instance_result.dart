// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_data_response.dart';
import 'excel_performance_data_response.dart';
import 'sapmigrate_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServerInstance.
class GetServerInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration data for this server instance.
  final ConfigurationDataResponse configurationData;
  /// Defines the errors related to SAP Instance resource.
  final SAPMigrateErrorResponse errors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// This is the Instance SID for ASCS/AP/DB instance.  An SAP system with HANA database for example could have a different SID for database Instance than that of ASCS instance.
  final String instanceSid;
  /// The name of the resource
  final String name;
  /// This is Operating System on which the host server is running.
  final String operatingSystem;
  /// Configuration data for this server instance.
  final ExcelPerformanceDataResponse performanceData;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Defines the type SAP instance on this server instance.
  final String sapInstanceType;
  /// This is the SAP Application Component; e.g. SAP S/4HANA 2022, SAP ERP ENHANCE PACKAGE.
  final String sapProduct;
  /// Provide the product version of the SAP product.
  final String sapProductVersion;
  /// This is the Virtual Machine Name of the SAP system. Add all the virtual machines attached to an SAP system which you wish to migrate to Azure. Keeping this not equal to ID as for single tier all InstanceTypes would be on same server, leading to multiple resources with same servername.
  final String serverName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetServerInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationData] Configuration data for this server instance.
  /// [errors] Defines the errors related to SAP Instance resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceSid] This is the Instance SID for ASCS/AP/DB instance.  An SAP system with HANA database for example could have a different SID for database Instance than that of ASCS instance.
  /// [name] The name of the resource
  /// [operatingSystem] This is Operating System on which the host server is running.
  /// [performanceData] Configuration data for this server instance.
  /// [provisioningState] Defines the provisioning states.
  /// [sapInstanceType] Defines the type SAP instance on this server instance.
  /// [sapProduct] This is the SAP Application Component; e.g. SAP S/4HANA 2022, SAP ERP ENHANCE PACKAGE.
  /// [sapProductVersion] Provide the product version of the SAP product.
  /// [serverName] This is the Virtual Machine Name of the SAP system. Add all the virtual machines attached to an SAP system which you wish to migrate to Azure. Keeping this not equal to ID as for single tier all InstanceTypes would be on same server, leading to multiple resources with same servername.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetServerInstanceResult({
    required this.azureApiVersion,
    required this.configurationData,
    required this.errors,
    required this.id,
    required this.instanceSid,
    required this.name,
    required this.operatingSystem,
    required this.performanceData,
    required this.provisioningState,
    required this.sapInstanceType,
    required this.sapProduct,
    required this.sapProductVersion,
    required this.serverName,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configurationData': configurationData.toMap(),
      'errors': errors.toMap(),
      'id': id,
      'instanceSid': instanceSid,
      'name': name,
      'operatingSystem': operatingSystem,
      'performanceData': performanceData.toMap(),
      'provisioningState': provisioningState,
      'sapInstanceType': sapInstanceType,
      'sapProduct': sapProduct,
      'sapProductVersion': sapProductVersion,
      'serverName': serverName,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetServerInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetServerInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configurationData: ConfigurationDataResponse.fromMap((map['configurationData'] as Map).cast<String, dynamic>()),
      errors: SAPMigrateErrorResponse.fromMap((map['errors'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      instanceSid: map['instanceSid'] as String,
      name: map['name'] as String,
      operatingSystem: map['operatingSystem'] as String,
      performanceData: ExcelPerformanceDataResponse.fromMap((map['performanceData'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      sapInstanceType: map['sapInstanceType'] as String,
      sapProduct: map['sapProduct'] as String,
      sapProductVersion: map['sapProductVersion'] as String,
      serverName: map['serverName'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

