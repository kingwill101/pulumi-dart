// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'abort_info_response_networkmanagement_v1beta1.dart';
import 'app_engine_version_info_response_networkmanagement_v1beta1.dart';
import 'cloud_function_info_response_networkmanagement_v1beta1.dart';
import 'cloud_run_revision_info_response_networkmanagement_v1beta1.dart';
import 'cloud_sqlinstance_info_response_networkmanagement_v1beta1.dart';
import 'deliver_info_response_networkmanagement_v1beta1.dart';
import 'drop_info_response_networkmanagement_v1beta1.dart';
import 'endpoint_info_response_networkmanagement_v1beta1.dart';
import 'firewall_info_response_networkmanagement_v1beta1.dart';
import 'forward_info_response_networkmanagement_v1beta1.dart';
import 'forwarding_rule_info_response_networkmanagement_v1beta1.dart';
import 'gkemaster_info_response_networkmanagement_v1beta1.dart';
import 'google_service_info_response_networkmanagement_v1beta1.dart';
import 'instance_info_response_networkmanagement_v1beta1.dart';
import 'load_balancer_info_response_networkmanagement_v1beta1.dart';
import 'network_info_response_networkmanagement_v1beta1.dart';
import 'route_info_response_networkmanagement_v1beta1.dart';
import 'vpc_connector_info_response_networkmanagement_v1beta1.dart';
import 'vpn_gateway_info_response_networkmanagement_v1beta1.dart';
import 'vpn_tunnel_info_response_networkmanagement_v1beta1.dart';

/// A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.
class StepResponseNetworkmanagementV1beta1 {
  /// Display information of the final state "abort" and reason.
  final pulumi.Input<AbortInfoResponseNetworkmanagementV1beta1> abort;
  /// Display information of an App Engine service version.
  final pulumi.Input<AppEngineVersionInfoResponseNetworkmanagementV1beta1> appEngineVersion;
  /// This is a step that leads to the final state Drop.
  final pulumi.Input<bool> causesDrop;
  /// Display information of a Cloud Function.
  final pulumi.Input<CloudFunctionInfoResponseNetworkmanagementV1beta1> cloudFunction;
  /// Display information of a Cloud Run revision.
  final pulumi.Input<CloudRunRevisionInfoResponseNetworkmanagementV1beta1> cloudRunRevision;
  /// Display information of a Cloud SQL instance.
  final pulumi.Input<CloudSQLInstanceInfoResponseNetworkmanagementV1beta1> cloudSqlInstance;
  /// Display information of the final state "deliver" and reason.
  final pulumi.Input<DeliverInfoResponseNetworkmanagementV1beta1> deliver;
  /// A description of the step. Usually this is a summary of the state.
  final pulumi.Input<String> description;
  /// Display information of the final state "drop" and reason.
  final pulumi.Input<DropInfoResponseNetworkmanagementV1beta1> drop;
  /// Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  final pulumi.Input<EndpointInfoResponseNetworkmanagementV1beta1> endpoint;
  /// Display information of a Compute Engine firewall rule.
  final pulumi.Input<FirewallInfoResponseNetworkmanagementV1beta1> firewall;
  /// Display information of the final state "forward" and reason.
  final pulumi.Input<ForwardInfoResponseNetworkmanagementV1beta1> forward;
  /// Display information of a Compute Engine forwarding rule.
  final pulumi.Input<ForwardingRuleInfoResponseNetworkmanagementV1beta1> forwardingRule;
  /// Display information of a Google Kubernetes Engine cluster master.
  final pulumi.Input<GKEMasterInfoResponseNetworkmanagementV1beta1> gkeMaster;
  /// Display information of a Google service
  final pulumi.Input<GoogleServiceInfoResponseNetworkmanagementV1beta1> googleService;
  /// Display information of a Compute Engine instance.
  final pulumi.Input<InstanceInfoResponseNetworkmanagementV1beta1> instance;
  /// Display information of the load balancers.
  final pulumi.Input<LoadBalancerInfoResponseNetworkmanagementV1beta1> loadBalancer;
  /// Display information of a Google Cloud network.
  final pulumi.Input<NetworkInfoResponseNetworkmanagementV1beta1> network;
  /// Project ID that contains the configuration this step is validating.
  final pulumi.Input<String> project;
  /// Display information of a Compute Engine route.
  final pulumi.Input<RouteInfoResponseNetworkmanagementV1beta1> route;
  /// Each step is in one of the pre-defined states.
  final pulumi.Input<String> state;
  /// Display information of a VPC connector.
  final pulumi.Input<VpcConnectorInfoResponseNetworkmanagementV1beta1> vpcConnector;
  /// Display information of a Compute Engine VPN gateway.
  final pulumi.Input<VpnGatewayInfoResponseNetworkmanagementV1beta1> vpnGateway;
  /// Display information of a Compute Engine VPN tunnel.
  final pulumi.Input<VpnTunnelInfoResponseNetworkmanagementV1beta1> vpnTunnel;

  /// Creates a new [StepResponseNetworkmanagementV1beta1].
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
  const StepResponseNetworkmanagementV1beta1({
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
      'abort': pulumi.Input.mapInputValue<AbortInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'appEngineVersion': pulumi.Input.mapInputValue<AppEngineVersionInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(appEngineVersion, (value) => value.toMap()),
      'causesDrop': causesDrop,
      'cloudFunction': pulumi.Input.mapInputValue<CloudFunctionInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRunRevision': pulumi.Input.mapInputValue<CloudRunRevisionInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(cloudRunRevision, (value) => value.toMap()),
      'cloudSqlInstance': pulumi.Input.mapInputValue<CloudSQLInstanceInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(cloudSqlInstance, (value) => value.toMap()),
      'deliver': pulumi.Input.mapInputValue<DeliverInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(deliver, (value) => value.toMap()),
      'description': description,
      'drop': pulumi.Input.mapInputValue<DropInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(drop, (value) => value.toMap()),
      'endpoint': pulumi.Input.mapInputValue<EndpointInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'firewall': pulumi.Input.mapInputValue<FirewallInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(firewall, (value) => value.toMap()),
      'forward': pulumi.Input.mapInputValue<ForwardInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(forward, (value) => value.toMap()),
      'forwardingRule': pulumi.Input.mapInputValue<ForwardingRuleInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(forwardingRule, (value) => value.toMap()),
      'gkeMaster': pulumi.Input.mapInputValue<GKEMasterInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(gkeMaster, (value) => value.toMap()),
      'googleService': pulumi.Input.mapInputValue<GoogleServiceInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(googleService, (value) => value.toMap()),
      'instance': pulumi.Input.mapInputValue<InstanceInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(instance, (value) => value.toMap()),
      'loadBalancer': pulumi.Input.mapInputValue<LoadBalancerInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'network': pulumi.Input.mapInputValue<NetworkInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(network, (value) => value.toMap()),
      'project': project,
      'route': pulumi.Input.mapInputValue<RouteInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(route, (value) => value.toMap()),
      'state': state,
      'vpcConnector': pulumi.Input.mapInputValue<VpcConnectorInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(vpcConnector, (value) => value.toMap()),
      'vpnGateway': pulumi.Input.mapInputValue<VpnGatewayInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(vpnGateway, (value) => value.toMap()),
      'vpnTunnel': pulumi.Input.mapInputValue<VpnTunnelInfoResponseNetworkmanagementV1beta1, Map<String, dynamic>>(vpnTunnel, (value) => value.toMap()),
    };
  }

  factory StepResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return StepResponseNetworkmanagementV1beta1(
      abort: pulumi.Input.fromValue(AbortInfoResponseNetworkmanagementV1beta1.fromMap((map['abort']! as Map).cast<String, dynamic>())),
      appEngineVersion: pulumi.Input.fromValue(AppEngineVersionInfoResponseNetworkmanagementV1beta1.fromMap((map['appEngineVersion']! as Map).cast<String, dynamic>())),
      causesDrop: pulumi.Input.fromValue(map['causesDrop'] as bool),
      cloudFunction: pulumi.Input.fromValue(CloudFunctionInfoResponseNetworkmanagementV1beta1.fromMap((map['cloudFunction']! as Map).cast<String, dynamic>())),
      cloudRunRevision: pulumi.Input.fromValue(CloudRunRevisionInfoResponseNetworkmanagementV1beta1.fromMap((map['cloudRunRevision']! as Map).cast<String, dynamic>())),
      cloudSqlInstance: pulumi.Input.fromValue(CloudSQLInstanceInfoResponseNetworkmanagementV1beta1.fromMap((map['cloudSqlInstance']! as Map).cast<String, dynamic>())),
      deliver: pulumi.Input.fromValue(DeliverInfoResponseNetworkmanagementV1beta1.fromMap((map['deliver']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      drop: pulumi.Input.fromValue(DropInfoResponseNetworkmanagementV1beta1.fromMap((map['drop']! as Map).cast<String, dynamic>())),
      endpoint: pulumi.Input.fromValue(EndpointInfoResponseNetworkmanagementV1beta1.fromMap((map['endpoint']! as Map).cast<String, dynamic>())),
      firewall: pulumi.Input.fromValue(FirewallInfoResponseNetworkmanagementV1beta1.fromMap((map['firewall']! as Map).cast<String, dynamic>())),
      forward: pulumi.Input.fromValue(ForwardInfoResponseNetworkmanagementV1beta1.fromMap((map['forward']! as Map).cast<String, dynamic>())),
      forwardingRule: pulumi.Input.fromValue(ForwardingRuleInfoResponseNetworkmanagementV1beta1.fromMap((map['forwardingRule']! as Map).cast<String, dynamic>())),
      gkeMaster: pulumi.Input.fromValue(GKEMasterInfoResponseNetworkmanagementV1beta1.fromMap((map['gkeMaster']! as Map).cast<String, dynamic>())),
      googleService: pulumi.Input.fromValue(GoogleServiceInfoResponseNetworkmanagementV1beta1.fromMap((map['googleService']! as Map).cast<String, dynamic>())),
      instance: pulumi.Input.fromValue(InstanceInfoResponseNetworkmanagementV1beta1.fromMap((map['instance']! as Map).cast<String, dynamic>())),
      loadBalancer: pulumi.Input.fromValue(LoadBalancerInfoResponseNetworkmanagementV1beta1.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())),
      network: pulumi.Input.fromValue(NetworkInfoResponseNetworkmanagementV1beta1.fromMap((map['network']! as Map).cast<String, dynamic>())),
      project: pulumi.Input.fromValue(map['project'] as String),
      route: pulumi.Input.fromValue(RouteInfoResponseNetworkmanagementV1beta1.fromMap((map['route']! as Map).cast<String, dynamic>())),
      state: pulumi.Input.fromValue(map['state'] as String),
      vpcConnector: pulumi.Input.fromValue(VpcConnectorInfoResponseNetworkmanagementV1beta1.fromMap((map['vpcConnector']! as Map).cast<String, dynamic>())),
      vpnGateway: pulumi.Input.fromValue(VpnGatewayInfoResponseNetworkmanagementV1beta1.fromMap((map['vpnGateway']! as Map).cast<String, dynamic>())),
      vpnTunnel: pulumi.Input.fromValue(VpnTunnelInfoResponseNetworkmanagementV1beta1.fromMap((map['vpnTunnel']! as Map).cast<String, dynamic>())),
    );
  }
}
