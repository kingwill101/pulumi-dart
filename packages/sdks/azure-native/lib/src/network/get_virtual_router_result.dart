// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by getVirtualRouter.
class GetVirtualRouterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The Gateway on which VirtualRouter is hosted.
  final SubResourceResponse? hostedGateway;
  /// The Subnet on which VirtualRouter is hosted.
  final SubResourceResponse? hostedSubnet;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// List of references to VirtualRouterPeerings.
  final List<SubResourceResponse>? peerings;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// VirtualRouter ASN.
  final double? virtualRouterAsn;
  /// VirtualRouter IPs.
  final List<String>? virtualRouterIps;

  /// Creates a new [GetVirtualRouterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hostedGateway] The Gateway on which VirtualRouter is hosted.
  /// [hostedSubnet] The Subnet on which VirtualRouter is hosted.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [peerings] List of references to VirtualRouterPeerings.
  /// [provisioningState] The provisioning state of the resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualRouterAsn] VirtualRouter ASN.
  /// [virtualRouterIps] VirtualRouter IPs.
  const GetVirtualRouterResult({
    this.azureApiVersion,
    this.etag,
    this.hostedGateway,
    this.hostedSubnet,
    this.id,
    this.location,
    this.name,
    this.peerings,
    this.provisioningState,
    this.tags,
    this.type,
    this.virtualRouterAsn,
    this.virtualRouterIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'hostedGateway': ?hostedGateway?.toMap(),
      'hostedSubnet': ?hostedSubnet?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'peerings': ?(() { final guardedValue = peerings; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': ?type,
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterIps': ?virtualRouterIps,
    };
  }

  factory GetVirtualRouterResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostedGateway: (() { final guardedValue = map['hostedGateway']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostedSubnet: (() { final guardedValue = map['hostedSubnet']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerings: (() { final guardedValue = map['peerings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualRouterAsn: (() { final guardedValue = map['virtualRouterAsn']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      virtualRouterIps: (() { final guardedValue = map['virtualRouterIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
