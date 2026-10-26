// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_network_response.dart';

/// Result data returned by getVmwareEngineNetwork.
class GetVmwareEngineNetworkResult {
  /// Creation time of this resource.
  final String? createTime;
  /// User-provided description for this VMware Engine network.
  final String? description;
  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date before the server processes a request. The server computes checksums based on the value of other fields in the request.
  final String? etag;
  /// The resource name of the VMware Engine network. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  final String? name;
  /// State of the VMware Engine network.
  final String? state;
  /// VMware Engine network type.
  final String? type;
  /// System-generated unique identifier for the resource.
  final String? uid;
  /// Last update time of this resource.
  final String? updateTime;
  /// VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects, the internet, and other Google Cloud services.
  final List<VpcNetworkResponse>? vpcNetworks;

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
    this.createTime,
    this.description,
    this.etag,
    this.name,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vpcNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'name': ?name,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vpcNetworks': ?(() { final guardedValue = vpcNetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<VpcNetworkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVmwareEngineNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVmwareEngineNetworkResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcNetworks: (() { final guardedValue = map['vpcNetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpcNetworkResponse>(guardedValue, (value) => VpcNetworkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
