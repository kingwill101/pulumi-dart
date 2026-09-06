// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppHostNameBindingSlot.
class GetWebAppHostNameBindingSlotResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure resource name.
  final String? azureResourceName;
  /// Azure resource type.
  final String? azureResourceType;
  /// Custom DNS record type.
  final String? customHostNameDnsRecordType;
  /// Fully qualified ARM domain resource URI.
  final String? domainId;
  /// Hostname type.
  final String? hostNameType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// App Service app name.
  final String? siteName;
  /// SSL type
  final String? sslState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// SSL certificate thumbprint
  final String? thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Virtual IP address assigned to the hostname if IP based SSL is enabled.
  final String? virtualIP;

  /// Creates a new [GetWebAppHostNameBindingSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureResourceName] Azure resource name.
  /// [azureResourceType] Azure resource type.
  /// [customHostNameDnsRecordType] Custom DNS record type.
  /// [domainId] Fully qualified ARM domain resource URI.
  /// [hostNameType] Hostname type.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [siteName] App Service app name.
  /// [sslState] SSL type
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [thumbprint] SSL certificate thumbprint
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualIP] Virtual IP address assigned to the hostname if IP based SSL is enabled.
  const GetWebAppHostNameBindingSlotResult({
    this.azureApiVersion,
    this.azureResourceName,
    this.azureResourceType,
    this.customHostNameDnsRecordType,
    this.domainId,
    this.hostNameType,
    this.id,
    this.kind,
    this.name,
    this.siteName,
    this.sslState,
    this.systemData,
    this.thumbprint,
    this.type,
    this.virtualIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureResourceName': ?azureResourceName,
      'azureResourceType': ?azureResourceType,
      'customHostNameDnsRecordType': ?customHostNameDnsRecordType,
      'domainId': ?domainId,
      'hostNameType': ?hostNameType,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'siteName': ?siteName,
      'sslState': ?sslState,
      'systemData': ?systemData?.toMap(),
      'thumbprint': ?thumbprint,
      'type': ?type,
      'virtualIP': ?virtualIP,
    };
  }

  factory GetWebAppHostNameBindingSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppHostNameBindingSlotResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureResourceName: (() { final guardedValue = map['azureResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureResourceType: (() { final guardedValue = map['azureResourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customHostNameDnsRecordType: (() { final guardedValue = map['customHostNameDnsRecordType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostNameType: (() { final guardedValue = map['hostNameType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslState: (() { final guardedValue = map['sslState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualIP: (() { final guardedValue = map['virtualIP']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
