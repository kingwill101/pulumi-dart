// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'central_server_vm_details_response.dart';
import 'enqueue_replication_server_properties_response.dart';
import 'enqueue_server_properties_response.dart';
import 'gateway_server_properties_response.dart';
import 'load_balancer_details_response.dart';
import 'message_server_properties_response.dart';
import 'sapvirtual_instance_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapCentralServerInstance.
class GetSapCentralServerInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Defines the SAP Enqueue Replication Server (ERS) properties.
  final EnqueueReplicationServerPropertiesResponse? enqueueReplicationServerProperties;
  /// Defines the SAP Enqueue Server properties.
  final EnqueueServerPropertiesResponse? enqueueServerProperties;
  /// Defines the errors related to SAP Central Services Instance resource.
  final SAPVirtualInstanceErrorResponse errors;
  /// Defines the SAP Gateway Server properties.
  final GatewayServerPropertiesResponse? gatewayServerProperties;
  /// Defines the health of SAP Instances.
  final String health;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The central services instance number.
  final String instanceNo;
  /// The central services instance Kernel Patch level.
  final String kernelPatch;
  /// The central services instance Kernel Version.
  final String kernelVersion;
  /// The Load Balancer details such as LoadBalancer ID attached to ASCS Virtual Machines
  final LoadBalancerDetailsResponse loadBalancerDetails;
  /// The geo-location where the resource lives
  final String location;
  /// Defines the SAP message server properties.
  final MessageServerPropertiesResponse? messageServerProperties;
  /// The name of the resource
  final String name;
  /// Defines the provisioning states.
  final String provisioningState;
  /// Defines the SAP Instance status.
  final String status;
  /// The central services instance subnet.
  final String subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The list of virtual machines corresponding to the Central Services instance.
  final List<CentralServerVmDetailsResponse> vmDetails;

  /// Creates a new [GetSapCentralServerInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enqueueReplicationServerProperties] Defines the SAP Enqueue Replication Server (ERS) properties.
  /// [enqueueServerProperties] Defines the SAP Enqueue Server properties.
  /// [errors] Defines the errors related to SAP Central Services Instance resource.
  /// [gatewayServerProperties] Defines the SAP Gateway Server properties.
  /// [health] Defines the health of SAP Instances.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [instanceNo] The central services instance number.
  /// [kernelPatch] The central services instance Kernel Patch level.
  /// [kernelVersion] The central services instance Kernel Version.
  /// [loadBalancerDetails] The Load Balancer details such as LoadBalancer ID attached to ASCS Virtual Machines
  /// [location] The geo-location where the resource lives
  /// [messageServerProperties] Defines the SAP message server properties.
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [status] Defines the SAP Instance status.
  /// [subnet] The central services instance subnet.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmDetails] The list of virtual machines corresponding to the Central Services instance.
  GetSapCentralServerInstanceResult({
    required this.azureApiVersion,
    this.enqueueReplicationServerProperties,
    this.enqueueServerProperties,
    required this.errors,
    this.gatewayServerProperties,
    required this.health,
    required this.id,
    required this.instanceNo,
    required this.kernelPatch,
    required this.kernelVersion,
    required this.loadBalancerDetails,
    required this.location,
    this.messageServerProperties,
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
      'enqueueReplicationServerProperties': ?enqueueReplicationServerProperties == null ? null : enqueueReplicationServerProperties!.toMap(),
      'enqueueServerProperties': ?enqueueServerProperties == null ? null : enqueueServerProperties!.toMap(),
      'errors': errors.toMap(),
      'gatewayServerProperties': ?gatewayServerProperties == null ? null : gatewayServerProperties!.toMap(),
      'health': health,
      'id': id,
      'instanceNo': instanceNo,
      'kernelPatch': kernelPatch,
      'kernelVersion': kernelVersion,
      'loadBalancerDetails': loadBalancerDetails.toMap(),
      'location': location,
      'messageServerProperties': ?messageServerProperties == null ? null : messageServerProperties!.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'status': status,
      'subnet': subnet,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmDetails': pulumi.Input.encodeList<CentralServerVmDetailsResponse, Map<String, dynamic>>(vmDetails, (value) => value.toMap()),
    };
  }

  factory GetSapCentralServerInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSapCentralServerInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      enqueueReplicationServerProperties: map['enqueueReplicationServerProperties'] == null ? null : EnqueueReplicationServerPropertiesResponse.fromMap((map['enqueueReplicationServerProperties']! as Map).cast<String, dynamic>()),
      enqueueServerProperties: map['enqueueServerProperties'] == null ? null : EnqueueServerPropertiesResponse.fromMap((map['enqueueServerProperties']! as Map).cast<String, dynamic>()),
      errors: SAPVirtualInstanceErrorResponse.fromMap((map['errors'] as Map).cast<String, dynamic>()),
      gatewayServerProperties: map['gatewayServerProperties'] == null ? null : GatewayServerPropertiesResponse.fromMap((map['gatewayServerProperties']! as Map).cast<String, dynamic>()),
      health: map['health'] as String,
      id: map['id'] as String,
      instanceNo: map['instanceNo'] as String,
      kernelPatch: map['kernelPatch'] as String,
      kernelVersion: map['kernelVersion'] as String,
      loadBalancerDetails: LoadBalancerDetailsResponse.fromMap((map['loadBalancerDetails'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      messageServerProperties: map['messageServerProperties'] == null ? null : MessageServerPropertiesResponse.fromMap((map['messageServerProperties']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      subnet: map['subnet'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      vmDetails: pulumi.Input.decodeList<CentralServerVmDetailsResponse>(map['vmDetails'], (value) => CentralServerVmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

