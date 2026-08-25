// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_vpc_project.dart';

/// {@template pulumi_edgecontainer_vpn_connection_vpn_connection_args_doc}
/// The set of arguments for VpnConnection.
/// {@endtemplate}
/// {@macro pulumi_edgecontainer_vpn_connection_vpn_connection_args_doc}
class VpnConnectionArgs {
  /// The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  final pulumi.Input<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  final pulumi.Input<bool?>? enableHighAvailability;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Google Cloud Platform location.
  final pulumi.Input<String> location;
  /// The resource name of VPN connection
  final pulumi.Input<String?>? name;
  /// NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// This is empty if NAT is not used.
  final pulumi.Input<String?>? natGatewayIp;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The VPN connection Cloud Router name.
  final pulumi.Input<String?>? router;
  /// The network ID of VPC to connect to.
  final pulumi.Input<String?>? vpc;
  /// Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  /// Structure is documented below.
  final pulumi.Input<VpnConnectionVpcProject?>? vpcProject;

  /// Creates a new [VpnConnectionArgs].
  /// [cluster] The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enableHighAvailability] Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  /// [labels] Labels associated with this resource.
  /// [location] Google Cloud Platform location.
  /// [name] The resource name of VPN connection
  /// [natGatewayIp] NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [router] The VPN connection Cloud Router name.
  /// [vpc] The network ID of VPC to connect to.
  /// [vpcProject] Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  const VpnConnectionArgs({
    required this.cluster,
    this.deletionPolicy,
    this.enableHighAvailability,
    this.labels,
    required this.location,
    this.name,
    this.natGatewayIp,
    this.project,
    this.router,
    this.vpc,
    this.vpcProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'deletionPolicy': ?deletionPolicy,
      'enableHighAvailability': ?enableHighAvailability,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'natGatewayIp': ?natGatewayIp,
      'project': ?project,
      'router': ?router,
      'vpc': ?vpc,
      'vpcProject': ?pulumi.Input.mapOptionalInputValue<VpnConnectionVpcProject, Map<String, dynamic>>(vpcProject, (value) => value.toMap()),
    };
  }

  factory VpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableHighAvailability: (() { final guardedValue = map['enableHighAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayIp: (() { final guardedValue = map['natGatewayIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcProject: (() { final guardedValue = map['vpcProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnConnectionVpcProject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
