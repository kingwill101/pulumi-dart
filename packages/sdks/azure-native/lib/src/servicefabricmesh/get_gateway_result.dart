// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_config_response.dart';
import 'network_ref_response.dart';
import 'tcp_config_response.dart';

/// Result data returned by getGateway.
class GetGatewayResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// User readable description of the gateway.
  final String? description;
  /// Network that the Application is using.
  final NetworkRefResponse? destinationNetwork;
  /// Configuration for http connectivity for this gateway.
  final List<HttpConfigResponse>? http;
  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// IP address of the gateway. This is populated in the response and is ignored for incoming requests.
  final String? ipAddress;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// State of the resource.
  final String? provisioningState;
  /// Network the gateway should listen on for requests.
  final NetworkRefResponse? sourceNetwork;
  /// Status of the resource.
  final String? status;
  /// Gives additional information about the current status of the gateway.
  final String? statusDetails;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Configuration for tcp connectivity for this gateway.
  final List<TcpConfigResponse>? tcp;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String? type;

  /// Creates a new [GetGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] User readable description of the gateway.
  /// [destinationNetwork] Network that the Application is using.
  /// [http] Configuration for http connectivity for this gateway.
  /// [id] Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [ipAddress] IP address of the gateway. This is populated in the response and is ignored for incoming requests.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] State of the resource.
  /// [sourceNetwork] Network the gateway should listen on for requests.
  /// [status] Status of the resource.
  /// [statusDetails] Gives additional information about the current status of the gateway.
  /// [tags] Resource tags.
  /// [tcp] Configuration for tcp connectivity for this gateway.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  const GetGatewayResult({
    this.azureApiVersion,
    this.description,
    this.destinationNetwork,
    this.http,
    this.id,
    this.ipAddress,
    this.location,
    this.name,
    this.provisioningState,
    this.sourceNetwork,
    this.status,
    this.statusDetails,
    this.tags,
    this.tcp,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'destinationNetwork': ?destinationNetwork?.toMap(),
      'http': ?(() { final guardedValue = http; if (guardedValue == null) return null; return pulumi.Input.encodeList<HttpConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipAddress': ?ipAddress,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sourceNetwork': ?sourceNetwork?.toMap(),
      'status': ?status,
      'statusDetails': ?statusDetails,
      'tags': ?tags,
      'tcp': ?(() { final guardedValue = tcp; if (guardedValue == null) return null; return pulumi.Input.encodeList<TcpConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationNetwork: (() { final guardedValue = map['destinationNetwork']; if (guardedValue == null) return null; return NetworkRefResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HttpConfigResponse>(guardedValue, (value) => HttpConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceNetwork: (() { final guardedValue = map['sourceNetwork']; if (guardedValue == null) return null; return NetworkRefResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TcpConfigResponse>(guardedValue, (value) => TcpConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
