// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_endpoint_group_app_engine.dart';
import 'region_network_endpoint_group_cloud_function.dart';
import 'region_network_endpoint_group_cloud_run.dart';
import 'region_network_endpoint_group_psc_data.dart';
import 'region_network_endpoint_group_serverless_deployment.dart';

/// Input properties used for looking up and filtering RegionNetworkEndpointGroup resources.
class RegionNetworkEndpointGroupState {
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkEndpointGroupAppEngine>? appEngine;
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkEndpointGroupCloudFunction>? cloudFunction;
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkEndpointGroupCloudRun>? cloudRun;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// This field is only used for PSC and INTERNET NEGs.
  /// The URL of the network to which all network endpoints in the NEG belong. Uses
  /// "default" project network if unspecified.
  final pulumi.Input<String>? network;
  /// Type of network endpoints in this network endpoint group. Defaults to SERVERLESS.
  /// Default value is `SERVERLESS`.
  /// Possible values are: `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `GCE_VM_IP_PORTMAP`.
  final pulumi.Input<String>? networkEndpointType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// This field is only used for PSC NEGs.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkEndpointGroupPscData>? pscData;
  /// This field is only used for PSC and INTERNET NEGs.
  /// The target service url used to set up private service connection to
  /// a Google API or a PSC Producer Service Attachment.
  final pulumi.Input<String>? pscTargetService;
  /// A reference to the region where the regional NEGs reside.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkEndpointGroupServerlessDeployment>? serverlessDeployment;
  /// This field is only used for PSC NEGs.
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [RegionNetworkEndpointGroupState].
  /// [appEngine] This field is only used for SERVERLESS NEGs.
  /// [cloudFunction] This field is only used for SERVERLESS NEGs.
  /// [cloudRun] This field is only used for SERVERLESS NEGs.
  /// [description] An optional description of this resource. Provide this property when
  /// [name] Name of the resource; provided by the client when the resource is
  /// [network] This field is only used for PSC and INTERNET NEGs.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group. Defaults to SERVERLESS.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscData] This field is only used for PSC NEGs.
  /// [pscTargetService] This field is only used for PSC and INTERNET NEGs.
  /// [region] A reference to the region where the regional NEGs reside.
  /// [selfLink] The URI of the created resource.
  /// [serverlessDeployment] This field is only used for SERVERLESS NEGs.
  /// [subnetwork] This field is only used for PSC NEGs.
  RegionNetworkEndpointGroupState({
    this.appEngine,
    this.cloudFunction,
    this.cloudRun,
    this.description,
    this.name,
    this.network,
    this.networkEndpointType,
    this.project,
    this.pscData,
    this.pscTargetService,
    this.region,
    this.selfLink,
    this.serverlessDeployment,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngine': ?pulumi.Input.mapOptionalInputValue<RegionNetworkEndpointGroupAppEngine, Map<String, dynamic>>(appEngine, (value) => value.toMap()),
      'cloudFunction': ?pulumi.Input.mapOptionalInputValue<RegionNetworkEndpointGroupCloudFunction, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRun': ?pulumi.Input.mapOptionalInputValue<RegionNetworkEndpointGroupCloudRun, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'network': ?network,
      'networkEndpointType': ?networkEndpointType,
      'project': ?project,
      'pscData': ?pulumi.Input.mapOptionalInputValue<RegionNetworkEndpointGroupPscData, Map<String, dynamic>>(pscData, (value) => value.toMap()),
      'pscTargetService': ?pscTargetService,
      'region': ?region,
      'selfLink': ?selfLink,
      'serverlessDeployment': ?pulumi.Input.mapOptionalInputValue<RegionNetworkEndpointGroupServerlessDeployment, Map<String, dynamic>>(serverlessDeployment, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
    };
  }

  factory RegionNetworkEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupState(
      appEngine: map['appEngine'] == null ? null : (RegionNetworkEndpointGroupAppEngine.fromMap((map['appEngine'] as Map).cast<String, dynamic>())).input(),
      cloudFunction: map['cloudFunction'] == null ? null : (RegionNetworkEndpointGroupCloudFunction.fromMap((map['cloudFunction'] as Map).cast<String, dynamic>())).input(),
      cloudRun: map['cloudRun'] == null ? null : (RegionNetworkEndpointGroupCloudRun.fromMap((map['cloudRun'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      networkEndpointType: map['networkEndpointType'] == null ? null : (map['networkEndpointType'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pscData: map['pscData'] == null ? null : (RegionNetworkEndpointGroupPscData.fromMap((map['pscData'] as Map).cast<String, dynamic>())).input(),
      pscTargetService: map['pscTargetService'] == null ? null : (map['pscTargetService'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      serverlessDeployment: map['serverlessDeployment'] == null ? null : (RegionNetworkEndpointGroupServerlessDeployment.fromMap((map['serverlessDeployment'] as Map).cast<String, dynamic>())).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
    );
  }
}

