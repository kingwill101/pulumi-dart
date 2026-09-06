// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by getDdosProtectionPlan.
class GetDdosProtectionPlanResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the DDoS protection plan resource.
  final String? provisioningState;
  /// The list of public IPs associated with the DDoS protection plan resource. This list is read-only.
  final List<SubResourceResponse>? publicIPAddresses;
  /// The resource GUID property of the DDoS protection plan resource. It uniquely identifies the resource, even if the user changes its name or migrate the resource across subscriptions or resource groups.
  final String? resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// The list of virtual networks associated with the DDoS protection plan resource. This list is read-only.
  final List<SubResourceResponse>? virtualNetworks;

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
    this.azureApiVersion,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.publicIPAddresses,
    this.resourceGuid,
    this.tags,
    this.type,
    this.virtualNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publicIPAddresses': ?(() { final guardedValue = publicIPAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGuid': ?resourceGuid,
      'tags': ?tags,
      'type': ?type,
      'virtualNetworks': ?(() { final guardedValue = virtualNetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDdosProtectionPlanResult.fromMap(Map<String, dynamic> map) {
    return GetDdosProtectionPlanResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIPAddresses: (() { final guardedValue = map['publicIPAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworks: (() { final guardedValue = map['virtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
