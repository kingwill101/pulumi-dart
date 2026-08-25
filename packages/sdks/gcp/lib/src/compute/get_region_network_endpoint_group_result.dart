// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_endpoint_group_app_engine.dart';
import 'get_region_network_endpoint_group_cloud_function.dart';
import 'get_region_network_endpoint_group_cloud_run.dart';
import 'get_region_network_endpoint_group_psc_data.dart';
import 'get_region_network_endpoint_group_serverless_deployment.dart';

/// Result data returned by getRegionNetworkEndpointGroup.
class GetRegionNetworkEndpointGroupResult {
  final List<GetRegionNetworkEndpointGroupAppEngine>? appEngines;
  final List<GetRegionNetworkEndpointGroupCloudFunction>? cloudFunctions;
  final List<GetRegionNetworkEndpointGroupCloudRun>? cloudRuns;
  final String? deletionPolicy;
  /// The RNEG description.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The network to which all network endpoints in the RNEG belong.
  final String? network;
  /// Type of network endpoints in this network endpoint group.
  final String? networkEndpointType;
  final String? project;
  final List<GetRegionNetworkEndpointGroupPscData>? pscDatas;
  /// The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment.
  final String? pscTargetService;
  final String? region;
  final String? selfLink;
  final List<GetRegionNetworkEndpointGroupServerlessDeployment>? serverlessDeployments;
  /// subnetwork to which all network endpoints in the RNEG belong.
  final String? subnetwork;

  /// Creates a new [GetRegionNetworkEndpointGroupResult].
  /// [appEngines] Optional.
  /// [cloudFunctions] Optional.
  /// [cloudRuns] Optional.
  /// [deletionPolicy] Optional.
  /// [description] The RNEG description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [network] The network to which all network endpoints in the RNEG belong.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group.
  /// [project] Optional.
  /// [pscDatas] Optional.
  /// [pscTargetService] The target service url used to set up private service connection to a Google API or a PSC Producer Service Attachment.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [serverlessDeployments] Optional.
  /// [subnetwork] subnetwork to which all network endpoints in the RNEG belong.
  const GetRegionNetworkEndpointGroupResult({
    this.appEngines,
    this.cloudFunctions,
    this.cloudRuns,
    this.deletionPolicy,
    this.description,
    this.id,
    this.name,
    this.network,
    this.networkEndpointType,
    this.project,
    this.pscDatas,
    this.pscTargetService,
    this.region,
    this.selfLink,
    this.serverlessDeployments,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngines': ?(() { final guardedValue = appEngines; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionNetworkEndpointGroupAppEngine, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cloudFunctions': ?(() { final guardedValue = cloudFunctions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionNetworkEndpointGroupCloudFunction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cloudRuns': ?(() { final guardedValue = cloudRuns; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionNetworkEndpointGroupCloudRun, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'network': ?network,
      'networkEndpointType': ?networkEndpointType,
      'project': ?project,
      'pscDatas': ?(() { final guardedValue = pscDatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionNetworkEndpointGroupPscData, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pscTargetService': ?pscTargetService,
      'region': ?region,
      'selfLink': ?selfLink,
      'serverlessDeployments': ?(() { final guardedValue = serverlessDeployments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionNetworkEndpointGroupServerlessDeployment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnetwork': ?subnetwork,
    };
  }

  factory GetRegionNetworkEndpointGroupResult.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupResult(
      appEngines: (() { final guardedValue = map['appEngines']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionNetworkEndpointGroupAppEngine>(guardedValue, (value) => GetRegionNetworkEndpointGroupAppEngine.fromMap((value as Map).cast<String, dynamic>())); })(),
      cloudFunctions: (() { final guardedValue = map['cloudFunctions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionNetworkEndpointGroupCloudFunction>(guardedValue, (value) => GetRegionNetworkEndpointGroupCloudFunction.fromMap((value as Map).cast<String, dynamic>())); })(),
      cloudRuns: (() { final guardedValue = map['cloudRuns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionNetworkEndpointGroupCloudRun>(guardedValue, (value) => GetRegionNetworkEndpointGroupCloudRun.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkEndpointType: (() { final guardedValue = map['networkEndpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscDatas: (() { final guardedValue = map['pscDatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionNetworkEndpointGroupPscData>(guardedValue, (value) => GetRegionNetworkEndpointGroupPscData.fromMap((value as Map).cast<String, dynamic>())); })(),
      pscTargetService: (() { final guardedValue = map['pscTargetService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverlessDeployments: (() { final guardedValue = map['serverlessDeployments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionNetworkEndpointGroupServerlessDeployment>(guardedValue, (value) => GetRegionNetworkEndpointGroupServerlessDeployment.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
