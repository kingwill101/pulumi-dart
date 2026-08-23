// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by getDdosProtectionPlan.
class GetDdosProtectionPlanResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the DDoS protection plan resource.
  final String provisioningState;
  /// The list of public IPs associated with the DDoS protection plan resource. This list is read-only.
  final List<SubResourceResponse> publicIPAddresses;
  /// The resource GUID property of the DDoS protection plan resource. It uniquely identifies the resource, even if the user changes its name or migrate the resource across subscriptions or resource groups.
  final String resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// The list of virtual networks associated with the DDoS protection plan resource. This list is read-only.
  final List<SubResourceResponse> virtualNetworks;

  /// Creates a new [GetDdosProtectionPlanResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the DDoS protection plan resource.
  /// [publicIPAddresses] The list of public IPs associated with the DDoS protection plan resource. This list is read-only.
  /// [resourceGuid] The resource GUID property of the DDoS protection plan resource. It uniquely identifies the resource, even if the user changes its name or migrate the resource across subscriptions or resource groups.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualNetworks] The list of virtual networks associated with the DDoS protection plan resource. This list is read-only.
  const GetDdosProtectionPlanResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.publicIPAddresses,
    required this.resourceGuid,
    this.tags,
    required this.type,
    required this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'publicIPAddresses': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(publicIPAddresses, (value) => value.toMap()),
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'type': type,
      'virtualNetworks': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(virtualNetworks, (value) => value.toMap()),
    };
  }

  factory GetDdosProtectionPlanResult.fromMap(Map<String, dynamic> map) {
    return GetDdosProtectionPlanResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIPAddresses: pulumi.Input.decodeList<SubResourceResponse>(map['publicIPAddresses']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGuid: map['resourceGuid'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualNetworks: pulumi.Input.decodeList<SubResourceResponse>(map['virtualNetworks']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
