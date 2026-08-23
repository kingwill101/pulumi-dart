// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_bridge_endpoint_response.dart';
import 'access_bridge_security_rule_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccessBridge.
class GetAccessBridgeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The detailed status reported by the access bridge.
  final String detailedStatus;
  /// The descriptive message that accompanies the detailed status.
  final String detailedStatusMessage;
  /// The observed endpoints that clients should use to reach the access bridge.
  final List<AccessBridgeEndpointResponse> endpoints;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  final String etag;
  /// The extended location of the resource. This property is required when creating the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The IPv4 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  final String? ipv4ConnectedPrefix;
  /// The IPv6 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  final String? ipv6ConnectedPrefix;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The resource ID of the internal network in a layer 3 isolation domain containing the IP subnets to use.
  final String networkId;
  /// The protocol advertised by the access bridge endpoints.
  final String protocol;
  /// The provisioning state of the access bridge.
  final String provisioningState;
  /// The list of security rules enforced by the access bridge.
  final List<AccessBridgeSecurityRuleResponse>? securityRules;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAccessBridgeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [detailedStatus] The detailed status reported by the access bridge.
  /// [detailedStatusMessage] The descriptive message that accompanies the detailed status.
  /// [endpoints] The observed endpoints that clients should use to reach the access bridge.
  /// [etag] "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  /// [extendedLocation] The extended location of the resource. This property is required when creating the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ipv4ConnectedPrefix] The IPv4 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  /// [ipv6ConnectedPrefix] The IPv6 subnet from which the access bridge allocates an address. This subnet must be part of the internal network specified by networkId.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkId] The resource ID of the internal network in a layer 3 isolation domain containing the IP subnets to use.
  /// [protocol] The protocol advertised by the access bridge endpoints.
  /// [provisioningState] The provisioning state of the access bridge.
  /// [securityRules] The list of security rules enforced by the access bridge.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAccessBridgeResult({
    required this.azureApiVersion,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.endpoints,
    required this.etag,
    required this.extendedLocation,
    required this.id,
    this.ipv4ConnectedPrefix,
    this.ipv6ConnectedPrefix,
    required this.location,
    required this.name,
    required this.networkId,
    required this.protocol,
    required this.provisioningState,
    this.securityRules,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'endpoints': pulumi.Input.encodeList<AccessBridgeEndpointResponse, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'ipv4ConnectedPrefix': ?ipv4ConnectedPrefix,
      'ipv6ConnectedPrefix': ?ipv6ConnectedPrefix,
      'location': location,
      'name': name,
      'networkId': networkId,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'securityRules': ?(() { final guardedValue = securityRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<AccessBridgeSecurityRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAccessBridgeResult.fromMap(Map<String, dynamic> map) {
    return GetAccessBridgeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      endpoints: pulumi.Input.decodeList<AccessBridgeEndpointResponse>(map['endpoints']!, (value) => AccessBridgeEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      ipv4ConnectedPrefix: (() { final guardedValue = map['ipv4ConnectedPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6ConnectedPrefix: (() { final guardedValue = map['ipv6ConnectedPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      networkId: map['networkId'] as String,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessBridgeSecurityRuleResponse>(guardedValue, (value) => AccessBridgeSecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
