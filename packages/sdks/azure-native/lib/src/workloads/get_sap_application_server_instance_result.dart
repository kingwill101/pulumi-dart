// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_server_vm_details_response.dart';
import 'load_balancer_details_response.dart';
import 'sapvirtual_instance_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapApplicationServerInstance.
class GetSapApplicationServerInstanceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Application server instance dispatcher status.
  final String? dispatcherStatus;
  /// Defines the Application Instance errors.
  final SAPVirtualInstanceErrorResponse? errors;
  /// Application server instance gateway Port.
  final double? gatewayPort;
  /// Defines the health of SAP Instances.
  final String? health;
  /// Application server instance SAP hostname.
  final String? hostname;
  /// Application server instance ICM HTTP Port.
  final double? icmHttpPort;
  /// Application server instance ICM HTTPS Port.
  final double? icmHttpsPort;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Application server Instance Number.
  final String? instanceNo;
  /// Application server instance SAP IP Address.
  final String? ipAddress;
  /// Application server instance SAP Kernel Patch level.
  final String? kernelPatch;
  /// Application server instance SAP Kernel Version.
  final String? kernelVersion;
  /// The Load Balancer details such as LoadBalancer ID attached to Application Server Virtual Machines
  final LoadBalancerDetailsResponse? loadBalancerDetails;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Defines the provisioning states.
  final String? provisioningState;
  /// Defines the SAP Instance status.
  final String? status;
  /// Application server Subnet.
  final String? subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The list of virtual machines.
  final List<ApplicationServerVmDetailsResponse>? vmDetails;

  /// Creates a new [GetSapApplicationServerInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dispatcherStatus] Application server instance dispatcher status.
  /// [errors] Defines the Application Instance errors.
  /// [gatewayPort] Application server instance gateway Port.
  /// [health] Defines the health of SAP Instances.
  /// [hostname] Application server instance SAP hostname.
  /// [icmHttpPort] Application server instance ICM HTTP Port.
  /// [icmHttpsPort] Application server instance ICM HTTPS Port.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [instanceNo] Application server Instance Number.
  /// [ipAddress] Application server instance SAP IP Address.
  /// [kernelPatch] Application server instance SAP Kernel Patch level.
  /// [kernelVersion] Application server instance SAP Kernel Version.
  /// [loadBalancerDetails] The Load Balancer details such as LoadBalancer ID attached to Application Server Virtual Machines
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [status] Defines the SAP Instance status.
  /// [subnet] Application server Subnet.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmDetails] The list of virtual machines.
  const GetSapApplicationServerInstanceResult({
    this.azureApiVersion,
    this.dispatcherStatus,
    this.errors,
    this.gatewayPort,
    this.health,
    this.hostname,
    this.icmHttpPort,
    this.icmHttpsPort,
    this.id,
    this.instanceNo,
    this.ipAddress,
    this.kernelPatch,
    this.kernelVersion,
    this.loadBalancerDetails,
    this.location,
    this.name,
    this.provisioningState,
    this.status,
    this.subnet,
    this.systemData,
    this.tags,
    this.type,
    this.vmDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dispatcherStatus': ?dispatcherStatus,
      'errors': ?errors?.toMap(),
      'gatewayPort': ?gatewayPort,
      'health': ?health,
      'hostname': ?hostname,
      'icmHttpPort': ?icmHttpPort,
      'icmHttpsPort': ?icmHttpsPort,
      'id': ?id,
      'instanceNo': ?instanceNo,
      'ipAddress': ?ipAddress,
      'kernelPatch': ?kernelPatch,
      'kernelVersion': ?kernelVersion,
      'loadBalancerDetails': ?loadBalancerDetails?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'subnet': ?subnet,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vmDetails': ?(() { final guardedValue = vmDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationServerVmDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSapApplicationServerInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSapApplicationServerInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dispatcherStatus: (() { final guardedValue = map['dispatcherStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return SAPVirtualInstanceErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayPort: (() { final guardedValue = map['gatewayPort']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      icmHttpPort: (() { final guardedValue = map['icmHttpPort']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      icmHttpsPort: (() { final guardedValue = map['icmHttpsPort']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceNo: (() { final guardedValue = map['instanceNo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kernelPatch: (() { final guardedValue = map['kernelPatch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kernelVersion: (() { final guardedValue = map['kernelVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerDetails: (() { final guardedValue = map['loadBalancerDetails']; if (guardedValue == null) return null; return LoadBalancerDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmDetails: (() { final guardedValue = map['vmDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationServerVmDetailsResponse>(guardedValue, (value) => ApplicationServerVmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
