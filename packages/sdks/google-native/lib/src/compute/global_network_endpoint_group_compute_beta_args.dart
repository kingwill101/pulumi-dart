// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_endpoint_group_network_endpoint_type_compute_beta.dart';
import 'network_endpoint_group_app_engine_compute_beta.dart';
import 'network_endpoint_group_cloud_function_compute_beta.dart';
import 'network_endpoint_group_cloud_run_compute_beta.dart';
import 'network_endpoint_group_lb_network_endpoint_group_compute_beta.dart';
import 'network_endpoint_group_serverless_deployment_compute_beta.dart';

/// {@template pulumi_compute_beta_global_network_endpoint_group_compute_beta_args_doc}
/// The set of arguments for GlobalNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_global_network_endpoint_group_compute_beta_args_doc}
class GlobalNetworkEndpointGroupComputeBetaArgs {
  /// Metadata defined as annotations on the network endpoint group.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupAppEngineComputeBeta>? appEngine;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudFunctionComputeBeta>?
  cloudFunction;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
  final pulumi.Input<NetworkEndpointGroupCloudRunComputeBeta>? cloudRun;

  /// The default port used if the port number is not specified in the network endpoint.
  final pulumi.Input<int>? defaultPort;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// This field is only valid when the network endpoint group is used for load balancing. [Deprecated] This field is deprecated.
  final pulumi.Input<NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta>?
  loadBalancer;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of the network to which all network endpoints in the NEG belong. Uses "default" project network if unspecified.
  final pulumi.Input<String>? network;

  /// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
  final pulumi.Input<GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta>?
  networkEndpointType;
  final pulumi.Input<String>? project;
  final pulumi.Input<Map<String, dynamic>>? pscData;

  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment. An example value is: "asia-northeast3-cloudkms.googleapis.com"
  final pulumi.Input<String>? pscTargetService;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  final pulumi.Input<NetworkEndpointGroupServerlessDeploymentComputeBeta>?
  serverlessDeployment;

  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [GlobalNetworkEndpointGroupComputeBetaArgs].
  /// [annotations] Metadata defined as annotations on the network endpoint group.
  /// [appEngine] Only valid when networkEndpointType is "SERVERLESS". Only one of cloudRun, appEngine or cloudFunction may be set.
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
  GlobalNetworkEndpointGroupComputeBetaArgs({
    this.annotations,
    this.appEngine,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appEngine':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupAppEngineComputeBeta,
            Map<String, dynamic>
          >(appEngine, (value) => value.toMap()),
      'cloudFunction':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupCloudFunctionComputeBeta,
            Map<String, dynamic>
          >(cloudFunction, (value) => value.toMap()),
      'cloudRun':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupCloudRunComputeBeta,
            Map<String, dynamic>
          >(cloudRun, (value) => value.toMap()),
      'defaultPort': ?defaultPort,
      'description': ?description,
      'loadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta,
            Map<String, dynamic>
          >(loadBalancer, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkEndpointType':
          ?pulumi.Input.mapOptionalInputValue<
            GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta,
            String
          >(networkEndpointType, (value) => value.wireValue),
      'project': ?project,
      'pscData': ?pscData,
      'pscTargetService': ?pscTargetService,
      'requestId': ?requestId,
      'serverlessDeployment':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkEndpointGroupServerlessDeploymentComputeBeta,
            Map<String, dynamic>
          >(serverlessDeployment, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
    };
  }

  factory GlobalNetworkEndpointGroupComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GlobalNetworkEndpointGroupComputeBetaArgs(
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
          NetworkEndpointGroupAppEngineComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cloudFunction: (() {
        final guardedValue = map['cloudFunction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupCloudFunctionComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cloudRun: (() {
        final guardedValue = map['cloudRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkEndpointGroupCloudRunComputeBeta.fromMap(
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
          NetworkEndpointGroupLbNetworkEndpointGroupComputeBeta.fromMap(
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
          GlobalNetworkEndpointGroupNetworkEndpointTypeComputeBeta.fromValue(
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
          NetworkEndpointGroupServerlessDeploymentComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
