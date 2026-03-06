// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_vm_details_response.dart';
import 'load_balancer_details_response.dart';
import 'sapvirtual_instance_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapDatabaseInstance.
class GetSapDatabaseInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Database SID name.
  final String databaseSid;
  /// Database type, that is if the DB is HANA, DB2, Oracle, SAP ASE, Max DB or MS SQL Server.
  final String databaseType;
  /// Defines the errors related to Database resource.
  final SAPVirtualInstanceErrorResponse errors;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Database IP Address.
  final String ipAddress;
  /// The Load Balancer details such as LoadBalancer ID attached to Database Virtual Machines
  final LoadBalancerDetailsResponse loadBalancerDetails;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Defines the SAP Instance status.
  final String status;
  /// Database subnet.
  final String subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The list of virtual machines corresponding to the Database resource.
  final List<DatabaseVmDetailsResponse> vmDetails;

  /// Creates a new [GetSapDatabaseInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseSid] Database SID name.
  /// [databaseType] Database type, that is if the DB is HANA, DB2, Oracle, SAP ASE, Max DB or MS SQL Server.
  /// [errors] Defines the errors related to Database resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ipAddress] Database IP Address.
  /// [loadBalancerDetails] The Load Balancer details such as LoadBalancer ID attached to Database Virtual Machines
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [status] Defines the SAP Instance status.
  /// [subnet] Database subnet.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmDetails] The list of virtual machines corresponding to the Database resource.
  const GetSapDatabaseInstanceResult({
    required this.azureApiVersion,
    required this.databaseSid,
    required this.databaseType,
    required this.errors,
    required this.id,
    required this.ipAddress,
    required this.loadBalancerDetails,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.status,
    required this.subnet,
    required this.systemData,
    this.tags,
    required this.type,
    required this.vmDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'databaseSid': databaseSid,
      'databaseType': databaseType,
      'errors': errors.toMap(),
      'id': id,
      'ipAddress': ipAddress,
      'loadBalancerDetails': loadBalancerDetails.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'status': status,
      'subnet': subnet,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmDetails': pulumi.Input.encodeList<DatabaseVmDetailsResponse, Map<String, dynamic>>(vmDetails, (value) => value.toMap()),
    };
  }

  factory GetSapDatabaseInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSapDatabaseInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      databaseSid: map['databaseSid'] as String,
      databaseType: map['databaseType'] as String,
      errors: SAPVirtualInstanceErrorResponse.fromMap((map['errors']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      loadBalancerDetails: LoadBalancerDetailsResponse.fromMap((map['loadBalancerDetails']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      subnet: map['subnet'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vmDetails: pulumi.Input.decodeList<DatabaseVmDetailsResponse>(map['vmDetails']!, (value) => DatabaseVmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

