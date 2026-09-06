// ignore_for_file: unused_element, unnecessary_cast

import 'guest_credential_response.dart';
import 'http_proxy_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVMInstanceGuestAgent.
class GetVMInstanceGuestAgentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Username / Password Credentials to provision guest agent.
  final GuestCredentialResponse? credentials;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String? customResourceName;
  /// HTTP Proxy configuration for the VM.
  final HttpProxyConfigurationResponse? httpProxyConfig;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Gets or sets the guest agent provisioning action.
  final String? provisioningAction;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// Gets or sets the guest agent status.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Gets or sets a unique identifier for this resource.
  final String? uuid;

  /// Creates a new [GetVMInstanceGuestAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningAction] Gets or sets the guest agent provisioning action.
  /// [provisioningState] Gets or sets the provisioning state.
  /// [status] Gets or sets the guest agent status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Gets or sets a unique identifier for this resource.
  const GetVMInstanceGuestAgentResult({
    this.azureApiVersion,
    this.credentials,
    this.customResourceName,
    this.httpProxyConfig,
    this.id,
    this.name,
    this.provisioningAction,
    this.provisioningState,
    this.status,
    this.systemData,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'credentials': ?credentials?.toMap(),
      'customResourceName': ?customResourceName,
      'httpProxyConfig': ?httpProxyConfig?.toMap(),
      'id': ?id,
      'name': ?name,
      'provisioningAction': ?provisioningAction,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory GetVMInstanceGuestAgentResult.fromMap(Map<String, dynamic> map) {
    return GetVMInstanceGuestAgentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return GuestCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customResourceName: (() { final guardedValue = map['customResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpProxyConfig: (() { final guardedValue = map['httpProxyConfig']; if (guardedValue == null) return null; return HttpProxyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningAction: (() { final guardedValue = map['provisioningAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
