// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_network_response.dart';

/// Result data returned by getVmwareEngineNetwork.
class GetVmwareEngineNetworkResult {
  /// Creation time of this resource.
  final String createTime;
  /// User-provided description for this VMware Engine network.
  final String description;
  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date before the server processes a request. The server computes checksums based on the value of other fields in the request.
  final String etag;
  /// The resource name of the VMware Engine network. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  final String name;
  /// State of the VMware Engine network.
  final String state;
  /// VMware Engine network type.
  final String type;
  /// System-generated unique identifier for the resource.
  final String uid;
  /// Last update time of this resource.
  final String updateTime;
  /// VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects, the internet, and other Google Cloud services.
  final List<VpcNetworkResponse> vpcNetworks;

  /// Creates a new [GetVmwareEngineNetworkResult].
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this VMware Engine network.
  /// [etag] Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date before the server processes a request. The server computes checksums based on the value of other fields in the request.
  /// [name] The resource name of the VMware Engine network. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  /// [state] State of the VMware Engine network.
  /// [type] VMware Engine network type.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vpcNetworks] VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects, the internet, and other Google Cloud services.
  const GetVmwareEngineNetworkResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.name,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
    required this.vpcNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'name': name,
      'state': state,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
      'vpcNetworks': pulumi.Input.encodeList<VpcNetworkResponse, Map<String, dynamic>>(vpcNetworks, (value) => value.toMap()),
    };
  }

  factory GetVmwareEngineNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVmwareEngineNetworkResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vpcNetworks: pulumi.Input.decodeList<VpcNetworkResponse>(map['vpcNetworks']!, (value) => VpcNetworkResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
