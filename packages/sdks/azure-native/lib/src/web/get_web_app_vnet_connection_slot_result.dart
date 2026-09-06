// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'vnet_route_response.dart';

/// Result data returned by getWebAppVnetConnectionSlot.
class GetWebAppVnetConnectionSlotResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A certificate file (.cer) blob containing the public key of the private key used to authenticate a \nPoint-To-Site VPN connection.
  final String? certBlob;
  /// The client certificate thumbprint.
  final String? certThumbprint;
  /// DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  final String? dnsServers;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Flag that is used to denote if this is VNET injection
  final bool? isSwift;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// &lt;code&gt;true&lt;/code&gt; if a resync is required; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool? resyncRequired;
  /// The routes that this Virtual Network connection uses.
  final List<VnetRouteResponse>? routes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The Virtual Network's resource ID.
  final String? vnetResourceId;

  /// Creates a new [GetWebAppVnetConnectionSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certBlob] A certificate file (.cer) blob containing the public key of the private key used to authenticate a \nPoint-To-Site VPN connection.
  /// [certThumbprint] The client certificate thumbprint.
  /// [dnsServers] DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isSwift] Flag that is used to denote if this is VNET injection
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [resyncRequired] &lt;code&gt;true&lt;/code&gt; if a resync is required; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [routes] The routes that this Virtual Network connection uses.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vnetResourceId] The Virtual Network's resource ID.
  const GetWebAppVnetConnectionSlotResult({
    this.azureApiVersion,
    this.certBlob,
    this.certThumbprint,
    this.dnsServers,
    this.id,
    this.isSwift,
    this.kind,
    this.name,
    this.resyncRequired,
    this.routes,
    this.systemData,
    this.type,
    this.vnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'certBlob': ?certBlob,
      'certThumbprint': ?certThumbprint,
      'dnsServers': ?dnsServers,
      'id': ?id,
      'isSwift': ?isSwift,
      'kind': ?kind,
      'name': ?name,
      'resyncRequired': ?resyncRequired,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<VnetRouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'vnetResourceId': ?vnetResourceId,
    };
  }

  factory GetWebAppVnetConnectionSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppVnetConnectionSlotResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certBlob: (() { final guardedValue = map['certBlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certThumbprint: (() { final guardedValue = map['certThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSwift: (() { final guardedValue = map['isSwift']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resyncRequired: (() { final guardedValue = map['resyncRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VnetRouteResponse>(guardedValue, (value) => VnetRouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vnetResourceId: (() { final guardedValue = map['vnetResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
