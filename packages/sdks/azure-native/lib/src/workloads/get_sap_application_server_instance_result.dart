// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_server_vm_details_response.dart';
import 'load_balancer_details_response.dart';
import 'sapvirtual_instance_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapApplicationServerInstance.
class GetSapApplicationServerInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Application server instance dispatcher status.
  final String dispatcherStatus;
  /// Defines the Application Instance errors.
  final SAPVirtualInstanceErrorResponse errors;
  /// Application server instance gateway Port.
  final double gatewayPort;
  /// Defines the health of SAP Instances.
  final String health;
  /// Application server instance SAP hostname.
  final String hostname;
  /// Application server instance ICM HTTP Port.
  final double icmHttpPort;
  /// Application server instance ICM HTTPS Port.
  final double icmHttpsPort;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Application server Instance Number.
  final String instanceNo;
  /// Application server instance SAP IP Address.
  final String ipAddress;
  /// Application server instance SAP Kernel Patch level.
  final String kernelPatch;
  /// Application server instance SAP Kernel Version.
  final String kernelVersion;
  /// The Load Balancer details such as LoadBalancer ID attached to Application Server Virtual Machines
  final LoadBalancerDetailsResponse loadBalancerDetails;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Defines the SAP Instance status.
  final String status;
  /// Application server Subnet.
  final String subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The list of virtual machines.
  final List<ApplicationServerVmDetailsResponse> vmDetails;

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
  GetSapApplicationServerInstanceResult({
    required this.azureApiVersion,
    required this.dispatcherStatus,
    required this.errors,
    required this.gatewayPort,
    required this.health,
    required this.hostname,
    required this.icmHttpPort,
    required this.icmHttpsPort,
    required this.id,
    required this.instanceNo,
    required this.ipAddress,
    required this.kernelPatch,
    required this.kernelVersion,
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
      'dispatcherStatus': dispatcherStatus,
      'errors': errors.toMap(),
      'gatewayPort': gatewayPort,
      'health': health,
      'hostname': hostname,
      'icmHttpPort': icmHttpPort,
      'icmHttpsPort': icmHttpsPort,
      'id': id,
      'instanceNo': instanceNo,
      'ipAddress': ipAddress,
      'kernelPatch': kernelPatch,
      'kernelVersion': kernelVersion,
      'loadBalancerDetails': loadBalancerDetails.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'status': status,
      'subnet': subnet,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmDetails': pulumi.Input.encodeList<ApplicationServerVmDetailsResponse, Map<String, dynamic>>(vmDetails, (value) => value.toMap()),
    };
  }

  factory GetSapApplicationServerInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSapApplicationServerInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dispatcherStatus: map['dispatcherStatus'] as String,
      errors: SAPVirtualInstanceErrorResponse.fromMap((map['errors'] as Map).cast<String, dynamic>()),
      gatewayPort: map['gatewayPort'] as double,
      health: map['health'] as String,
      hostname: map['hostname'] as String,
      icmHttpPort: map['icmHttpPort'] as double,
      icmHttpsPort: map['icmHttpsPort'] as double,
      id: map['id'] as String,
      instanceNo: map['instanceNo'] as String,
      ipAddress: map['ipAddress'] as String,
      kernelPatch: map['kernelPatch'] as String,
      kernelVersion: map['kernelVersion'] as String,
      loadBalancerDetails: LoadBalancerDetailsResponse.fromMap((map['loadBalancerDetails'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      subnet: map['subnet'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      vmDetails: pulumi.Input.decodeList<ApplicationServerVmDetailsResponse>(map['vmDetails'], (value) => ApplicationServerVmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

