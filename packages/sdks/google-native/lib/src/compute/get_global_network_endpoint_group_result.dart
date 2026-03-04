// ignore_for_file: unused_element, unnecessary_cast

import 'network_endpoint_group_app_engine_response.dart';
import 'network_endpoint_group_cloud_function_response.dart';
import 'network_endpoint_group_cloud_run_response.dart';
import 'network_endpoint_group_lb_network_endpoint_group_response.dart';
import 'network_endpoint_group_psc_data_response.dart';
import 'network_endpoint_group_serverless_deployment_response.dart';

/// Result data returned by getGlobalNetworkEndpointGroup.
class GetGlobalNetworkEndpointGroupResult {
  /// Metadata defined as annotations on the network endpoint group.
  final Map<String, String> annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupAppEngineResponse appEngine;

  /// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  final String clientPortMappingMode;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupCloudFunctionResponse cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupCloudRunResponse cloudRun;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// The default port used if the port number is not specified in the network endpoint.
  final int defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Type of the resource. Always compute#networkEndpointGroup for network endpoint group.
  final String kind;

  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  final NetworkEndpointGroupLbNetworkEndpointGroupResponse loadBalancer;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final String network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final String networkEndpointType;
  final NetworkEndpointGroupPscDataResponse pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final String pscTargetService;

  /// The URL of the region where the network endpoint group is located.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  final NetworkEndpointGroupServerlessDeploymentResponse serverlessDeployment;

  /// [Output only] Number of network endpoints in the network endpoint group.
  final int size;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final String subnetwork;

  /// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  final String type;

  /// The URL of the zone where the network endpoint group is located.
  final String zone;

  /// Creates a new [GetGlobalNetworkEndpointGroupResult].
  /// [annotations] Metadata defined as annotations on the network endpoint group.
  /// [appEngine] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [clientPortMappingMode] Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  /// [cloudFunction] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudRun] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#networkEndpointGroup for network endpoint group.
  /// [loadBalancer] This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  /// [pscData] Required.
  /// [pscTargetService] The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  /// [region] The URL of the region where the network endpoint group is located.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [serverlessDeployment] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// [size] [Output only] Number of network endpoints in the network endpoint group.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  /// [type] Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  /// [zone] The URL of the zone where the network endpoint group is located.
  GetGlobalNetworkEndpointGroupResult({
    required this.annotations,
    required this.appEngine,
    required this.clientPortMappingMode,
    required this.cloudFunction,
    required this.cloudRun,
    required this.creationTimestamp,
    required this.defaultPort,
    required this.description,
    required this.kind,
    required this.loadBalancer,
    required this.name,
    required this.network,
    required this.networkEndpointType,
    required this.pscData,
    required this.pscTargetService,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.serverlessDeployment,
    required this.size,
    required this.subnetwork,
    required this.type,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'appEngine': appEngine.toMap(),
      'clientPortMappingMode': clientPortMappingMode,
      'cloudFunction': cloudFunction.toMap(),
      'cloudRun': cloudRun.toMap(),
      'creationTimestamp': creationTimestamp,
      'defaultPort': defaultPort,
      'description': description,
      'kind': kind,
      'loadBalancer': loadBalancer.toMap(),
      'name': name,
      'network': network,
      'networkEndpointType': networkEndpointType,
      'pscData': pscData.toMap(),
      'pscTargetService': pscTargetService,
      'region': region,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'serverlessDeployment': serverlessDeployment.toMap(),
      'size': size,
      'subnetwork': subnetwork,
      'type': type,
      'zone': zone,
    };
  }

  factory GetGlobalNetworkEndpointGroupResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGlobalNetworkEndpointGroupResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      appEngine: NetworkEndpointGroupAppEngineResponse.fromMap(
        (map['appEngine']! as Map).cast<String, dynamic>(),
      ),
      clientPortMappingMode: map['clientPortMappingMode'] as String,
      cloudFunction: NetworkEndpointGroupCloudFunctionResponse.fromMap(
        (map['cloudFunction']! as Map).cast<String, dynamic>(),
      ),
      cloudRun: NetworkEndpointGroupCloudRunResponse.fromMap(
        (map['cloudRun']! as Map).cast<String, dynamic>(),
      ),
      creationTimestamp: map['creationTimestamp'] as String,
      defaultPort: map['defaultPort'] as int,
      description: map['description'] as String,
      kind: map['kind'] as String,
      loadBalancer: NetworkEndpointGroupLbNetworkEndpointGroupResponse.fromMap(
        (map['loadBalancer']! as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      network: map['network'] as String,
      networkEndpointType: map['networkEndpointType'] as String,
      pscData: NetworkEndpointGroupPscDataResponse.fromMap(
        (map['pscData']! as Map).cast<String, dynamic>(),
      ),
      pscTargetService: map['pscTargetService'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      serverlessDeployment:
          NetworkEndpointGroupServerlessDeploymentResponse.fromMap(
            (map['serverlessDeployment']! as Map).cast<String, dynamic>(),
          ),
      size: map['size'] as int,
      subnetwork: map['subnetwork'] as String,
      type: map['type'] as String,
      zone: map['zone'] as String,
    );
  }
}
