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
  final String? azureApiVersion;
  /// Defines the SAP Enqueue Replication Server (ERS) properties.
  final EnqueueReplicationServerPropertiesResponse? enqueueReplicationServerProperties;
  /// Defines the SAP Enqueue Server properties.
  final EnqueueServerPropertiesResponse? enqueueServerProperties;
  /// Defines the errors related to SAP Central Services Instance resource.
  final SAPVirtualInstanceErrorResponse? errors;
  /// Defines the SAP Gateway Server properties.
  final GatewayServerPropertiesResponse? gatewayServerProperties;
  /// Defines the health of SAP Instances.
  final String? health;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The central services instance number.
  final String? instanceNo;
  /// The central services instance Kernel Patch level.
  final String? kernelPatch;
  /// The central services instance Kernel Version.
  final String? kernelVersion;
  /// The Load Balancer details such as LoadBalancer ID attached to ASCS Virtual Machines
  final LoadBalancerDetailsResponse? loadBalancerDetails;
  /// The geo-location where the resource lives
  final String? location;
  /// Defines the SAP message server properties.
  final MessageServerPropertiesResponse? messageServerProperties;
  /// The name of the resource
  final String? name;
  /// Defines the provisioning states.
  final String? provisioningState;
  /// Defines the SAP Instance status.
  final String? status;
  /// The central services instance subnet.
  final String? subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The list of virtual machines corresponding to the Central Services instance.
  final List<CentralServerVmDetailsResponse>? vmDetails;

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
  const GetSapCentralServerInstanceResult({
    this.azureApiVersion,
    this.enqueueReplicationServerProperties,
    this.enqueueServerProperties,
    this.errors,
    this.gatewayServerProperties,
    this.health,
    this.id,
    this.instanceNo,
    this.kernelPatch,
    this.kernelVersion,
    this.loadBalancerDetails,
    this.location,
    this.messageServerProperties,
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
      'enqueueReplicationServerProperties': ?enqueueReplicationServerProperties?.toMap(),
      'enqueueServerProperties': ?enqueueServerProperties?.toMap(),
      'errors': ?errors?.toMap(),
      'gatewayServerProperties': ?gatewayServerProperties?.toMap(),
      'health': ?health,
      'id': ?id,
      'instanceNo': ?instanceNo,
      'kernelPatch': ?kernelPatch,
      'kernelVersion': ?kernelVersion,
      'loadBalancerDetails': ?loadBalancerDetails?.toMap(),
      'location': ?location,
      'messageServerProperties': ?messageServerProperties?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'subnet': ?subnet,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vmDetails': ?(() { final guardedValue = vmDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<CentralServerVmDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSapCentralServerInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetSapCentralServerInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enqueueReplicationServerProperties: (() { final guardedValue = map['enqueueReplicationServerProperties']; if (guardedValue == null) return null; return EnqueueReplicationServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enqueueServerProperties: (() { final guardedValue = map['enqueueServerProperties']; if (guardedValue == null) return null; return EnqueueServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return SAPVirtualInstanceErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayServerProperties: (() { final guardedValue = map['gatewayServerProperties']; if (guardedValue == null) return null; return GatewayServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceNo: (() { final guardedValue = map['instanceNo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kernelPatch: (() { final guardedValue = map['kernelPatch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kernelVersion: (() { final guardedValue = map['kernelVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerDetails: (() { final guardedValue = map['loadBalancerDetails']; if (guardedValue == null) return null; return LoadBalancerDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messageServerProperties: (() { final guardedValue = map['messageServerProperties']; if (guardedValue == null) return null; return MessageServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmDetails: (() { final guardedValue = map['vmDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CentralServerVmDetailsResponse>(guardedValue, (value) => CentralServerVmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
