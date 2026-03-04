// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_group_app_engine.dart';
import 'network_endpoint_group_client_port_mapping_mode.dart';
import 'network_endpoint_group_cloud_function.dart';
import 'network_endpoint_group_cloud_run.dart';
import 'network_endpoint_group_lb_network_endpoint_group.dart';
import 'network_endpoint_group_network_endpoint_type.dart';
import 'network_endpoint_group_serverless_deployment.dart';
import 'network_endpoint_group_type.dart';

/// {@template pulumi_compute_alpha_network_endpoint_group_args_doc}
/// The set of arguments for NetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_network_endpoint_group_args_doc}
class NetworkEndpointGroupArgs {
  /// Metadata defined as annotations on the network endpoint group.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupAppEngine>? appEngine;

  /// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  final pulumi.Input<NetworkEndpointGroupClientPortMappingMode>?
  clientPortMappingMode;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudFunction>? cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudRun>? cloudRun;

  /// The default port used if the port number is not specified in the network endpoint.
  final pulumi.Input<int>? defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  final pulumi.Input<NetworkEndpointGroupLbNetworkEndpointGroup>? loadBalancer;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final pulumi.Input<String>? network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final pulumi.Input<NetworkEndpointGroupNetworkEndpointType>?
  networkEndpointType;
  final pulumi.Input<String>? project;
  final pulumi.Input<Map<String, dynamic>>? pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final pulumi.Input<String>? pscTargetService;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  final pulumi.Input<NetworkEndpointGroupServerlessDeployment>?
  serverlessDeployment;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  final pulumi.Input<NetworkEndpointGroupType>? type;
  final pulumi.Input<String>? zone;

  /// Creates a new [NetworkEndpointGroupArgs].
  /// [annotations] Metadata defined as annotations on the network endpoint group.
  /// [appEngine] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [clientPortMappingMode] Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
  /// [cloudFunction] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [cloudRun] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  /// [defaultPort] The default port used if the port number is not specified in the network endpoint.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [loadBalancer] This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  /// [project] Optional.
  /// [pscData] Optional.
  /// [pscTargetService] The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serverlessDeployment] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// [subnetwork] Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  /// [type] Specify the type of this network endpoint group. Only LOAD_BALANCING is valid for now.
  /// [zone] Optional.
  NetworkEndpointGroupArgs({
    this.annotations,
    this.appEngine,
    this.clientPortMappingMode,
    this.cloudFunction,
    this.cloudRun,
    this.defaultPort,
    this.description,
    this.loadBalancer,
    this.name,
    this.network,
    this.networkEndpointType,
    this.project,
    this.pscData,
    this.pscTargetService,
    this.requestId,
    this.serverlessDeployment,
    this.subnetwork,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appEngine':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupAppEngine,
            Map<String, dynamic>
          >(appEngine, (value) => value.toMap()),
      'clientPortMappingMode':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupClientPortMappingMode,
            String
          >(clientPortMappingMode, (value) => value.wireValue),
      'cloudFunction':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupCloudFunction,
            Map<String, dynamic>
          >(cloudFunction, (value) => value.toMap()),
      'cloudRun':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupCloudRun,
            Map<String, dynamic>
          >(cloudRun, (value) => value.toMap()),
      'defaultPort': ?defaultPort,
      'description': ?description,
      'loadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupLbNetworkEndpointGroup,
            Map<String, dynamic>
          >(loadBalancer, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkEndpointType':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupNetworkEndpointType,
            String
          >(networkEndpointType, (value) => value.wireValue),
      'project': ?project,
      'pscData': ?pscData,
      'pscTargetService': ?pscTargetService,
      'requestId': ?requestId,
      'serverlessDeployment':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupServerlessDeployment,
            Map<String, dynamic>
          >(serverlessDeployment, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
      'type':
          ?pulumi.Input.mapOptionalInputValue<NetworkEndpointGroupType, String>(
            type,
            (value) => value.wireValue,
          ),
      'zone': ?zone,
    };
  }

  factory NetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      appEngine: (() {
        final guardedValue = map['appEngine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupAppEngine.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientPortMappingMode: (() {
        final guardedValue = map['clientPortMappingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupClientPortMappingMode.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      cloudFunction: (() {
        final guardedValue = map['cloudFunction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupCloudFunction.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cloudRun: (() {
        final guardedValue = map['cloudRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupCloudRun.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultPort: (() {
        final guardedValue = map['defaultPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancer: (() {
        final guardedValue = map['loadBalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupLbNetworkEndpointGroup.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkEndpointType: (() {
        final guardedValue = map['networkEndpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupNetworkEndpointType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pscData: (() {
        final guardedValue = map['pscData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      pscTargetService: (() {
        final guardedValue = map['pscTargetService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverlessDeployment: (() {
        final guardedValue = map['serverlessDeployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupServerlessDeployment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupType.fromValue(guardedValue as String),
        );
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
