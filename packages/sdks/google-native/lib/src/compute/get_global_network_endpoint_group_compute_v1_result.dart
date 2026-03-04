// ignore_for_file: unused_element, unnecessary_cast

import 'network_endpoint_group_app_engine_response_compute_v1.dart';
import 'network_endpoint_group_cloud_function_response_compute_v1.dart';
import 'network_endpoint_group_cloud_run_response_compute_v1.dart';
import 'network_endpoint_group_psc_data_response_compute_v1.dart';

/// Result data returned by getGlobalNetworkEndpointGroup.
class GetGlobalNetworkEndpointGroupComputeV1Result {
  /// Metadata defined as annotations on the network endpoint group.
  final Map<String, String> annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupAppEngineResponseComputeV1 appEngine;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupCloudFunctionResponseComputeV1 cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final NetworkEndpointGroupCloudRunResponseComputeV1 cloudRun;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// The default port used if the port number is not specified in the network endpoint.
  final int defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Type of the resource. Always compute#networkEndpointGroup for network endpoint group.
  final String kind;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final String network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final String networkEndpointType;
  final NetworkEndpointGroupPscDataResponseComputeV1 pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final String pscTargetService;

  /// The URL of the region where the network endpoint group is located.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// [Output only] Number of network endpoints in the network endpoint group.
  final int size;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final String subnetwork;

  /// The URL of the zone where the network endpoint group is located.
  final String zone;

  /// Creates a new [GetGlobalNetworkEndpointGroupComputeV1Result].
  /// [annotations] Metadata defined as annotations on the network endpoint group.
  /// [appEngine] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudFunction] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudRun] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#networkEndpointGroup for network endpoint group.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  /// [pscData] Required.
  /// [pscTargetService] The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  /// [region] The URL of the region where the network endpoint group is located.
  /// [selfLink] Server-defined URL for the resource.
  /// [size] [Output only] Number of network endpoints in the network endpoint group.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  /// [zone] The URL of the zone where the network endpoint group is located.
  GetGlobalNetworkEndpointGroupComputeV1Result({
    required this.annotations,
    required this.appEngine,
    required this.cloudFunction,
    required this.cloudRun,
    required this.creationTimestamp,
    required this.defaultPort,
    required this.description,
    required this.kind,
    required this.name,
    required this.network,
    required this.networkEndpointType,
    required this.pscData,
    required this.pscTargetService,
    required this.region,
    required this.selfLink,
    required this.size,
    required this.subnetwork,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'appEngine': appEngine.toMap(),
      'cloudFunction': cloudFunction.toMap(),
      'cloudRun': cloudRun.toMap(),
      'creationTimestamp': creationTimestamp,
      'defaultPort': defaultPort,
      'description': description,
      'kind': kind,
      'name': name,
      'network': network,
      'networkEndpointType': networkEndpointType,
      'pscData': pscData.toMap(),
      'pscTargetService': pscTargetService,
      'region': region,
      'selfLink': selfLink,
      'size': size,
      'subnetwork': subnetwork,
      'zone': zone,
    };
  }

  factory GetGlobalNetworkEndpointGroupComputeV1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGlobalNetworkEndpointGroupComputeV1Result(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      appEngine: NetworkEndpointGroupAppEngineResponseComputeV1.fromMap(
        (map['appEngine']! as Map).cast<String, dynamic>(),
      ),
      cloudFunction: NetworkEndpointGroupCloudFunctionResponseComputeV1.fromMap(
        (map['cloudFunction']! as Map).cast<String, dynamic>(),
      ),
      cloudRun: NetworkEndpointGroupCloudRunResponseComputeV1.fromMap(
        (map['cloudRun']! as Map).cast<String, dynamic>(),
      ),
      creationTimestamp: map['creationTimestamp'] as String,
      defaultPort: map['defaultPort'] as int,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkEndpointType: map['networkEndpointType'] as String,
      pscData: NetworkEndpointGroupPscDataResponseComputeV1.fromMap(
        (map['pscData']! as Map).cast<String, dynamic>(),
      ),
      pscTargetService: map['pscTargetService'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      size: map['size'] as int,
      subnetwork: map['subnetwork'] as String,
      zone: map['zone'] as String,
    );
  }
}
