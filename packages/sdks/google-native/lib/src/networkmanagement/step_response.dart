// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'abort_info_response.dart';
import 'app_engine_version_info_response.dart';
import 'cloud_function_info_response.dart';
import 'cloud_run_revision_info_response.dart';
import 'cloud_sqlinstance_info_response.dart';
import 'deliver_info_response.dart';
import 'drop_info_response.dart';
import 'endpoint_info_response.dart';
import 'firewall_info_response.dart';
import 'forward_info_response.dart';
import 'forwarding_rule_info_response.dart';
import 'gkemaster_info_response.dart';
import 'google_service_info_response.dart';
import 'instance_info_response.dart';
import 'load_balancer_info_response.dart';
import 'network_info_response.dart';
import 'route_info_response.dart';
import 'vpc_connector_info_response.dart';
import 'vpn_gateway_info_response.dart';
import 'vpn_tunnel_info_response.dart';

/// A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.
class StepResponse {
  /// Display information of the final state "abort" and reason.
  final pulumi.Input<AbortInfoResponse> abort;
  /// Display information of an App Engine service version.
  final pulumi.Input<AppEngineVersionInfoResponse> appEngineVersion;
  /// This is a step that leads to the final state Drop.
  final pulumi.Input<bool> causesDrop;
  /// Display information of a Cloud Function.
  final pulumi.Input<CloudFunctionInfoResponse> cloudFunction;
  /// Display information of a Cloud Run revision.
  final pulumi.Input<CloudRunRevisionInfoResponse> cloudRunRevision;
  /// Display information of a Cloud SQL instance.
  final pulumi.Input<CloudSQLInstanceInfoResponse> cloudSqlInstance;
  /// Display information of the final state "deliver" and reason.
  final pulumi.Input<DeliverInfoResponse> deliver;
  /// A description of the step. Usually this is a summary of the state.
  final pulumi.Input<String> description;
  /// Display information of the final state "drop" and reason.
  final pulumi.Input<DropInfoResponse> drop;
  /// Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  final pulumi.Input<EndpointInfoResponse> endpoint;
  /// Display information of a Compute Engine firewall rule.
  final pulumi.Input<FirewallInfoResponse> firewall;
  /// Display information of the final state "forward" and reason.
  final pulumi.Input<ForwardInfoResponse> forward;
  /// Display information of a Compute Engine forwarding rule.
  final pulumi.Input<ForwardingRuleInfoResponse> forwardingRule;
  /// Display information of a Google Kubernetes Engine cluster master.
  final pulumi.Input<GKEMasterInfoResponse> gkeMaster;
  /// Display information of a Google service
  final pulumi.Input<GoogleServiceInfoResponse> googleService;
  /// Display information of a Compute Engine instance.
  final pulumi.Input<InstanceInfoResponse> instance;
  /// Display information of the load balancers.
  final pulumi.Input<LoadBalancerInfoResponse> loadBalancer;
  /// Display information of a Google Cloud network.
  final pulumi.Input<NetworkInfoResponse> network;
  /// Project ID that contains the configuration this step is validating.
  final pulumi.Input<String> project;
  /// Display information of a Compute Engine route.
  final pulumi.Input<RouteInfoResponse> route;
  /// Each step is in one of the pre-defined states.
  final pulumi.Input<String> state;
  /// Display information of a VPC connector.
  final pulumi.Input<VpcConnectorInfoResponse> vpcConnector;
  /// Display information of a Compute Engine VPN gateway.
  final pulumi.Input<VpnGatewayInfoResponse> vpnGateway;
  /// Display information of a Compute Engine VPN tunnel.
  final pulumi.Input<VpnTunnelInfoResponse> vpnTunnel;

  /// Creates a new [StepResponse].
  /// [abort] Display information of the final state "abort" and reason.
  /// [appEngineVersion] Display information of an App Engine service version.
  /// [causesDrop] This is a step that leads to the final state Drop.
  /// [cloudFunction] Display information of a Cloud Function.
  /// [cloudRunRevision] Display information of a Cloud Run revision.
  /// [cloudSqlInstance] Display information of a Cloud SQL instance.
  /// [deliver] Display information of the final state "deliver" and reason.
  /// [description] A description of the step. Usually this is a summary of the state.
  /// [drop] Display information of the final state "drop" and reason.
  /// [endpoint] Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  /// [firewall] Display information of a Compute Engine firewall rule.
  /// [forward] Display information of the final state "forward" and reason.
  /// [forwardingRule] Display information of a Compute Engine forwarding rule.
  /// [gkeMaster] Display information of a Google Kubernetes Engine cluster master.
  /// [googleService] Display information of a Google service
  /// [instance] Display information of a Compute Engine instance.
  /// [loadBalancer] Display information of the load balancers.
  /// [network] Display information of a Google Cloud network.
  /// [project] Project ID that contains the configuration this step is validating.
  /// [route] Display information of a Compute Engine route.
  /// [state] Each step is in one of the pre-defined states.
  /// [vpcConnector] Display information of a VPC connector.
  /// [vpnGateway] Display information of a Compute Engine VPN gateway.
  /// [vpnTunnel] Display information of a Compute Engine VPN tunnel.
  const StepResponse({
    required this.abort,
    required this.appEngineVersion,
    required this.causesDrop,
    required this.cloudFunction,
    required this.cloudRunRevision,
    required this.cloudSqlInstance,
    required this.deliver,
    required this.description,
    required this.drop,
    required this.endpoint,
    required this.firewall,
    required this.forward,
    required this.forwardingRule,
    required this.gkeMaster,
    required this.googleService,
    required this.instance,
    required this.loadBalancer,
    required this.network,
    required this.project,
    required this.route,
    required this.state,
    required this.vpcConnector,
    required this.vpnGateway,
    required this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': pulumi.Input.mapInputValue<AbortInfoResponse, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'appEngineVersion': pulumi.Input.mapInputValue<AppEngineVersionInfoResponse, Map<String, dynamic>>(appEngineVersion, (value) => value.toMap()),
      'causesDrop': causesDrop,
      'cloudFunction': pulumi.Input.mapInputValue<CloudFunctionInfoResponse, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRunRevision': pulumi.Input.mapInputValue<CloudRunRevisionInfoResponse, Map<String, dynamic>>(cloudRunRevision, (value) => value.toMap()),
      'cloudSqlInstance': pulumi.Input.mapInputValue<CloudSQLInstanceInfoResponse, Map<String, dynamic>>(cloudSqlInstance, (value) => value.toMap()),
      'deliver': pulumi.Input.mapInputValue<DeliverInfoResponse, Map<String, dynamic>>(deliver, (value) => value.toMap()),
      'description': description,
      'drop': pulumi.Input.mapInputValue<DropInfoResponse, Map<String, dynamic>>(drop, (value) => value.toMap()),
      'endpoint': pulumi.Input.mapInputValue<EndpointInfoResponse, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'firewall': pulumi.Input.mapInputValue<FirewallInfoResponse, Map<String, dynamic>>(firewall, (value) => value.toMap()),
      'forward': pulumi.Input.mapInputValue<ForwardInfoResponse, Map<String, dynamic>>(forward, (value) => value.toMap()),
      'forwardingRule': pulumi.Input.mapInputValue<ForwardingRuleInfoResponse, Map<String, dynamic>>(forwardingRule, (value) => value.toMap()),
      'gkeMaster': pulumi.Input.mapInputValue<GKEMasterInfoResponse, Map<String, dynamic>>(gkeMaster, (value) => value.toMap()),
      'googleService': pulumi.Input.mapInputValue<GoogleServiceInfoResponse, Map<String, dynamic>>(googleService, (value) => value.toMap()),
      'instance': pulumi.Input.mapInputValue<InstanceInfoResponse, Map<String, dynamic>>(instance, (value) => value.toMap()),
      'loadBalancer': pulumi.Input.mapInputValue<LoadBalancerInfoResponse, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'network': pulumi.Input.mapInputValue<NetworkInfoResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'project': project,
      'route': pulumi.Input.mapInputValue<RouteInfoResponse, Map<String, dynamic>>(route, (value) => value.toMap()),
      'state': state,
      'vpcConnector': pulumi.Input.mapInputValue<VpcConnectorInfoResponse, Map<String, dynamic>>(vpcConnector, (value) => value.toMap()),
      'vpnGateway': pulumi.Input.mapInputValue<VpnGatewayInfoResponse, Map<String, dynamic>>(vpnGateway, (value) => value.toMap()),
      'vpnTunnel': pulumi.Input.mapInputValue<VpnTunnelInfoResponse, Map<String, dynamic>>(vpnTunnel, (value) => value.toMap()),
    };
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      abort: pulumi.Input.fromValue(AbortInfoResponse.fromMap((map['abort']! as Map).cast<String, dynamic>())),
      appEngineVersion: pulumi.Input.fromValue(AppEngineVersionInfoResponse.fromMap((map['appEngineVersion']! as Map).cast<String, dynamic>())),
      causesDrop: pulumi.Input.fromValue(map['causesDrop'] as bool),
      cloudFunction: pulumi.Input.fromValue(CloudFunctionInfoResponse.fromMap((map['cloudFunction']! as Map).cast<String, dynamic>())),
      cloudRunRevision: pulumi.Input.fromValue(CloudRunRevisionInfoResponse.fromMap((map['cloudRunRevision']! as Map).cast<String, dynamic>())),
      cloudSqlInstance: pulumi.Input.fromValue(CloudSQLInstanceInfoResponse.fromMap((map['cloudSqlInstance']! as Map).cast<String, dynamic>())),
      deliver: pulumi.Input.fromValue(DeliverInfoResponse.fromMap((map['deliver']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      drop: pulumi.Input.fromValue(DropInfoResponse.fromMap((map['drop']! as Map).cast<String, dynamic>())),
      endpoint: pulumi.Input.fromValue(EndpointInfoResponse.fromMap((map['endpoint']! as Map).cast<String, dynamic>())),
      firewall: pulumi.Input.fromValue(FirewallInfoResponse.fromMap((map['firewall']! as Map).cast<String, dynamic>())),
      forward: pulumi.Input.fromValue(ForwardInfoResponse.fromMap((map['forward']! as Map).cast<String, dynamic>())),
      forwardingRule: pulumi.Input.fromValue(ForwardingRuleInfoResponse.fromMap((map['forwardingRule']! as Map).cast<String, dynamic>())),
      gkeMaster: pulumi.Input.fromValue(GKEMasterInfoResponse.fromMap((map['gkeMaster']! as Map).cast<String, dynamic>())),
      googleService: pulumi.Input.fromValue(GoogleServiceInfoResponse.fromMap((map['googleService']! as Map).cast<String, dynamic>())),
      instance: pulumi.Input.fromValue(InstanceInfoResponse.fromMap((map['instance']! as Map).cast<String, dynamic>())),
      loadBalancer: pulumi.Input.fromValue(LoadBalancerInfoResponse.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())),
      network: pulumi.Input.fromValue(NetworkInfoResponse.fromMap((map['network']! as Map).cast<String, dynamic>())),
      project: pulumi.Input.fromValue(map['project'] as String),
      route: pulumi.Input.fromValue(RouteInfoResponse.fromMap((map['route']! as Map).cast<String, dynamic>())),
      state: pulumi.Input.fromValue(map['state'] as String),
      vpcConnector: pulumi.Input.fromValue(VpcConnectorInfoResponse.fromMap((map['vpcConnector']! as Map).cast<String, dynamic>())),
      vpnGateway: pulumi.Input.fromValue(VpnGatewayInfoResponse.fromMap((map['vpnGateway']! as Map).cast<String, dynamic>())),
      vpnTunnel: pulumi.Input.fromValue(VpnTunnelInfoResponse.fromMap((map['vpnTunnel']! as Map).cast<String, dynamic>())),
    );
  }
}

