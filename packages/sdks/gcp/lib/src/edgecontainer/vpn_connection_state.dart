// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_detail.dart';
import 'vpn_connection_vpc_project.dart';

/// Input properties used for looking up and filtering VpnConnection resources.
class VpnConnectionState {
  /// The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  final pulumi.Input<String?>? cluster;
  /// The time when the VPN connection was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<VpnConnectionDetail>?>? details;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  final pulumi.Input<bool?>? enableHighAvailability;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Google Cloud Platform location.
  final pulumi.Input<String?>? location;
  /// The resource name of VPN connection
  final pulumi.Input<String?>? name;
  /// NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// This is empty if NAT is not used.
  final pulumi.Input<String?>? natGatewayIp;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The VPN connection Cloud Router name.
  final pulumi.Input<String?>? router;
  /// The time when the VPN connection was last updated.
  final pulumi.Input<String?>? updateTime;
  /// The network ID of VPC to connect to.
  final pulumi.Input<String?>? vpc;
  /// Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  /// Structure is documented below.
  final pulumi.Input<VpnConnectionVpcProject?>? vpcProject;

  /// Creates a new [VpnConnectionState].
  /// [cluster] The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  /// [createTime] The time when the VPN connection was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [details] A nested object resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableHighAvailability] Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  /// [labels] Labels associated with this resource.
  /// [location] Google Cloud Platform location.
  /// [name] The resource name of VPN connection
  /// [natGatewayIp] NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [router] The VPN connection Cloud Router name.
  /// [updateTime] The time when the VPN connection was last updated.
  /// [vpc] The network ID of VPC to connect to.
  /// [vpcProject] Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  const VpnConnectionState({
    this.cluster,
    this.createTime,
    this.deletionPolicy,
    this.details,
    this.effectiveLabels,
    this.enableHighAvailability,
    this.labels,
    this.location,
    this.name,
    this.natGatewayIp,
    this.project,
    this.pulumiLabels,
    this.router,
    this.updateTime,
    this.vpc,
    this.vpcProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'details': ?pulumi.Input.mapOptionalInputValue<List<VpnConnectionDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<VpnConnectionDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveLabels': ?effectiveLabels,
      'enableHighAvailability': ?enableHighAvailability,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'natGatewayIp': ?natGatewayIp,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'router': ?router,
      'updateTime': ?updateTime,
      'vpc': ?vpc,
      'vpcProject': ?pulumi.Input.mapOptionalInputValue<VpnConnectionVpcProject, Map<String, dynamic>>(vpcProject, (value) => value.toMap()),
    };
  }

  factory VpnConnectionState.fromMap(Map<String, dynamic> map) {
    return VpnConnectionState(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnConnectionDetail>(guardedValue, (value) => VpnConnectionDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableHighAvailability: (() { final guardedValue = map['enableHighAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayIp: (() { final guardedValue = map['natGatewayIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcProject: (() { final guardedValue = map['vpcProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnConnectionVpcProject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
