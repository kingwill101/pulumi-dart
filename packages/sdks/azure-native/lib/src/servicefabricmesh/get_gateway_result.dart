// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_config_response.dart';
import 'network_ref_response.dart';
import 'tcp_config_response.dart';

/// Result data returned by getGateway.
class GetGatewayResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// User readable description of the gateway.
  final String? description;
  /// Network that the Application is using.
  final NetworkRefResponse destinationNetwork;
  /// Configuration for http connectivity for this gateway.
  final List<HttpConfigResponse>? http;
  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// IP address of the gateway. This is populated in the response and is ignored for incoming requests.
  final String ipAddress;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// State of the resource.
  final String provisioningState;
  /// Network the gateway should listen on for requests.
  final NetworkRefResponse sourceNetwork;
  /// Status of the resource.
  final String status;
  /// Gives additional information about the current status of the gateway.
  final String statusDetails;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Configuration for tcp connectivity for this gateway.
  final List<TcpConfigResponse>? tcp;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

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
  GetGatewayResult({
    required this.azureApiVersion,
    this.description,
    required this.destinationNetwork,
    this.http,
    required this.id,
    required this.ipAddress,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.sourceNetwork,
    required this.status,
    required this.statusDetails,
    this.tags,
    this.tcp,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'destinationNetwork': destinationNetwork.toMap(),
      'http': ?(() { final guardedValue = http; if (guardedValue == null) return null; return pulumi.Input.encodeList<HttpConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ipAddress': ipAddress,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sourceNetwork': sourceNetwork.toMap(),
      'status': status,
      'statusDetails': statusDetails,
      'tags': ?tags,
      'tcp': ?(() { final guardedValue = tcp; if (guardedValue == null) return null; return pulumi.Input.encodeList<TcpConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationNetwork: NetworkRefResponse.fromMap((map['destinationNetwork']! as Map).cast<String, dynamic>()),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HttpConfigResponse>(guardedValue, (value) => HttpConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceNetwork: NetworkRefResponse.fromMap((map['sourceNetwork']! as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TcpConfigResponse>(guardedValue, (value) => TcpConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
    );
  }
}

