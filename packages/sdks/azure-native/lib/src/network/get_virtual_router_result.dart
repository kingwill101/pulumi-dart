// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by getVirtualRouter.
class GetVirtualRouterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The Gateway on which VirtualRouter is hosted.
  final SubResourceResponse? hostedGateway;
  /// The Subnet on which VirtualRouter is hosted.
  final SubResourceResponse? hostedSubnet;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// List of references to VirtualRouterPeerings.
  final List<SubResourceResponse> peerings;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
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
  GetVirtualRouterResult({
    required this.azureApiVersion,
    required this.etag,
    this.hostedGateway,
    this.hostedSubnet,
    this.id,
    this.location,
    required this.name,
    required this.peerings,
    required this.provisioningState,
    this.tags,
    required this.type,
    this.virtualRouterAsn,
    this.virtualRouterIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'hostedGateway': ?hostedGateway == null ? null : hostedGateway!.toMap(),
      'hostedSubnet': ?hostedSubnet == null ? null : hostedSubnet!.toMap(),
      'id': ?id,
      'location': ?location,
      'name': name,
      'peerings': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(peerings, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterIps': ?virtualRouterIps,
    };
  }

  factory GetVirtualRouterResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      hostedGateway: map['hostedGateway'] == null ? null : SubResourceResponse.fromMap((map['hostedGateway']! as Map).cast<String, dynamic>()),
      hostedSubnet: map['hostedSubnet'] == null ? null : SubResourceResponse.fromMap((map['hostedSubnet']! as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      peerings: pulumi.Input.decodeList<SubResourceResponse>(map['peerings'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualRouterAsn: map['virtualRouterAsn'] == null ? null : map['virtualRouterAsn']! as double,
      virtualRouterIps: map['virtualRouterIps'] == null ? null : (map['virtualRouterIps']! as List).cast<String>(),
    );
  }
}

