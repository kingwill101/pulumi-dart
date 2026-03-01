// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_detail.dart';
import 'vpn_connection_vpc_project.dart';

/// Input properties used for looking up and filtering VpnConnection resources.
class VpnConnectionState {
  /// The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  final pulumi.Input<String>? cluster;
  /// The time when the VPN connection was created.
  final pulumi.Input<String>? createTime;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<List<VpnConnectionDetail>>? details;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  final pulumi.Input<bool>? enableHighAvailability;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Google Cloud Platform location.
  final pulumi.Input<String>? location;
  /// The resource name of VPN connection
  final pulumi.Input<String>? name;
  /// NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// This is empty if NAT is not used.
  final pulumi.Input<String>? natGatewayIp;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The VPN connection Cloud Router name.
  final pulumi.Input<String>? router;
  /// The time when the VPN connection was last updated.
  final pulumi.Input<String>? updateTime;
  /// The network ID of VPC to connect to.
  final pulumi.Input<String>? vpc;
  /// Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  /// Structure is documented below.
  final pulumi.Input<VpnConnectionVpcProject>? vpcProject;

  /// Creates a new [VpnConnectionState].
  /// [cluster] The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  /// [createTime] The time when the VPN connection was created.
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
  VpnConnectionState({
    pulumi.Output<String>? cluster,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<VpnConnectionDetail>>? details,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enableHighAvailability,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? natGatewayIp,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? router,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? vpc,
    pulumi.Output<VpnConnectionVpcProject>? vpcProject,
  }) :
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      details = pulumi.Input.asOptionalInput<List<VpnConnectionDetail>>(details),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enableHighAvailability = pulumi.Input.asOptionalInput<bool>(enableHighAvailability),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      natGatewayIp = pulumi.Input.asOptionalInput<String>(natGatewayIp),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      router = pulumi.Input.asOptionalInput<String>(router),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      vpc = pulumi.Input.asOptionalInput<String>(vpc),
      vpcProject = pulumi.Input.asOptionalInput<VpnConnectionVpcProject>(vpcProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'createTime': ?createTime,
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
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      details: map['details'] == null ? null : pulumi.Output.create<List<VpnConnectionDetail>>(pulumi.Input.decodeList<VpnConnectionDetail>(map['details'], (value) => VpnConnectionDetail.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enableHighAvailability: map['enableHighAvailability'] == null ? null : pulumi.Output.create<bool>(map['enableHighAvailability'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      natGatewayIp: map['natGatewayIp'] == null ? null : pulumi.Output.create<String>(map['natGatewayIp'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      router: map['router'] == null ? null : pulumi.Output.create<String>(map['router'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<String>(map['vpc'] as String),
      vpcProject: map['vpcProject'] == null ? null : pulumi.Output.create<VpnConnectionVpcProject>(VpnConnectionVpcProject.fromMap((map['vpcProject'] as Map).cast<String, dynamic>())),
    );
  }
}

