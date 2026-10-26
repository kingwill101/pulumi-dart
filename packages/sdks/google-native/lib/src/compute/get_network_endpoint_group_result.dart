// ignore_for_file: unused_element, unnecessary_cast

import 'network_endpoint_group_app_engine_response.dart';
import 'network_endpoint_group_cloud_function_response.dart';
import 'network_endpoint_group_cloud_run_response.dart';
import 'network_endpoint_group_lb_network_endpoint_group_response.dart';
import 'network_endpoint_group_psc_data_response.dart';
import 'network_endpoint_group_serverless_deployment_response.dart';

/// Result data returned by getNetworkEndpointGroup.
class GetNetworkEndpointGroupResult {
  /// Metadata defined as annotations on the network endpoint group.
  final Map<String, String>? annotations;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupAppEngineResponse? appEngine;
  /// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  final String? clientPortMappingMode;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupCloudFunctionResponse? cloudFunction;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupCloudRunResponse? cloudRun;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// The default port used if the port number is not specified in the network endpoint.
  final int? defaultPort;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Type of the resource. Always compute#networkEndpointGroup for network endpoint group.
  final String? kind;
  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  final NetworkEndpointGroupLbNetworkEndpointGroupResponse? loadBalancer;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final String? network;
  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final String? networkEndpointType;
  final NetworkEndpointGroupPscDataResponse? pscData;
  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final String? pscTargetService;
  /// The URL of the region where the network endpoint group is located.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  final NetworkEndpointGroupServerlessDeploymentResponse? serverlessDeployment;
  /// [Output only] Number of network endpoints in the network endpoint group.
  final int? size;
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final String? subnetwork;
  /// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  final String? type;
  /// The URL of the zone where the network endpoint group is located.
  final String? zone;

  /// Creates a new [GetNetworkEndpointGroupResult].
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
  /// [pscData] Optional.
  /// [pscTargetService] The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  /// [region] The URL of the region where the network endpoint group is located.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [serverlessDeployment] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// [size] [Output only] Number of network endpoints in the network endpoint group.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  /// [type] Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  /// [zone] The URL of the zone where the network endpoint group is located.
  const GetNetworkEndpointGroupResult({
    this.annotations,
    this.appEngine,
    this.clientPortMappingMode,
    this.cloudFunction,
    this.cloudRun,
    this.creationTimestamp,
    this.defaultPort,
    this.description,
    this.kind,
    this.loadBalancer,
    this.name,
    this.network,
    this.networkEndpointType,
    this.pscData,
    this.pscTargetService,
    this.region,
    this.selfLink,
    this.selfLinkWithId,
    this.serverlessDeployment,
    this.size,
    this.subnetwork,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appEngine': ?appEngine?.toMap(),
      'clientPortMappingMode': ?clientPortMappingMode,
      'cloudFunction': ?cloudFunction?.toMap(),
      'cloudRun': ?cloudRun?.toMap(),
      'creationTimestamp': ?creationTimestamp,
      'defaultPort': ?defaultPort,
      'description': ?description,
      'kind': ?kind,
      'loadBalancer': ?loadBalancer?.toMap(),
      'name': ?name,
      'network': ?network,
      'networkEndpointType': ?networkEndpointType,
      'pscData': ?pscData?.toMap(),
      'pscTargetService': ?pscTargetService,
      'region': ?region,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'serverlessDeployment': ?serverlessDeployment?.toMap(),
      'size': ?size,
      'subnetwork': ?subnetwork,
      'type': ?type,
      'zone': ?zone,
    };
  }

  factory GetNetworkEndpointGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      appEngine: (() { final guardedValue = map['appEngine']; if (guardedValue == null) return null; return NetworkEndpointGroupAppEngineResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clientPortMappingMode: (() { final guardedValue = map['clientPortMappingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudFunction: (() { final guardedValue = map['cloudFunction']; if (guardedValue == null) return null; return NetworkEndpointGroupCloudFunctionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudRun: (() { final guardedValue = map['cloudRun']; if (guardedValue == null) return null; return NetworkEndpointGroupCloudRunResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPort: (() { final guardedValue = map['defaultPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return NetworkEndpointGroupLbNetworkEndpointGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkEndpointType: (() { final guardedValue = map['networkEndpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscData: (() { final guardedValue = map['pscData']; if (guardedValue == null) return null; return NetworkEndpointGroupPscDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      pscTargetService: (() { final guardedValue = map['pscTargetService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverlessDeployment: (() { final guardedValue = map['serverlessDeployment']; if (guardedValue == null) return null; return NetworkEndpointGroupServerlessDeploymentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
