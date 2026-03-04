// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_endpoint_group_app_engine.dart';
import 'region_network_endpoint_group_cloud_function.dart';
import 'region_network_endpoint_group_cloud_run.dart';
import 'region_network_endpoint_group_psc_data.dart';
import 'region_network_endpoint_group_serverless_deployment.dart';

/// {@template pulumi_compute_region_network_endpoint_group_region_network_endpoint_group_args_doc}
/// The set of arguments for RegionNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_region_network_endpoint_group_region_network_endpoint_group_args_doc}
class RegionNetworkEndpointGroupArgs {
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
  final pulumi.Input<String> region;

  /// This field is only used for SERVERLESS NEGs.
  /// Only one of cloudRun, appEngine, cloudFunction or serverlessDeployment may be set.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkEndpointGroupServerlessDeployment>?
  serverlessDeployment;

  /// This field is only used for PSC NEGs.
  /// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [RegionNetworkEndpointGroupArgs].
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
  /// [serverlessDeployment] This field is only used for SERVERLESS NEGs.
  /// [subnetwork] This field is only used for PSC NEGs.
  RegionNetworkEndpointGroupArgs({
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
    required this.region,
    this.serverlessDeployment,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngine':
          ?pulumi.Input.mapOptionalInputValue<
            RegionNetworkEndpointGroupAppEngine,
            Map<String, dynamic>
          >(appEngine, (value) => value.toMap()),
      'cloudFunction':
          ?pulumi.Input.mapOptionalInputValue<
            RegionNetworkEndpointGroupCloudFunction,
            Map<String, dynamic>
          >(cloudFunction, (value) => value.toMap()),
      'cloudRun':
          ?pulumi.Input.mapOptionalInputValue<
            RegionNetworkEndpointGroupCloudRun,
            Map<String, dynamic>
          >(cloudRun, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'network': ?network,
      'networkEndpointType': ?networkEndpointType,
      'project': ?project,
      'pscData':
          ?pulumi.Input.mapOptionalInputValue<
            RegionNetworkEndpointGroupPscData,
            Map<String, dynamic>
          >(pscData, (value) => value.toMap()),
      'pscTargetService': ?pscTargetService,
      'region': region,
      'serverlessDeployment':
          ?pulumi.Input.mapOptionalInputValue<
            RegionNetworkEndpointGroupServerlessDeployment,
            Map<String, dynamic>
          >(serverlessDeployment, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
    };
  }

  factory RegionNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupArgs(
      appEngine: (() {
        final guardedValue = map['appEngine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegionNetworkEndpointGroupAppEngine.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cloudFunction: (() {
        final guardedValue = map['cloudFunction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegionNetworkEndpointGroupCloudFunction.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cloudRun: (() {
        final guardedValue = map['cloudRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegionNetworkEndpointGroupCloudRun.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
        return pulumi.Input.fromValue(guardedValue as String);
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
          RegionNetworkEndpointGroupPscData.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pscTargetService: (() {
        final guardedValue = map['pscTargetService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      serverlessDeployment: (() {
        final guardedValue = map['serverlessDeployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegionNetworkEndpointGroupServerlessDeployment.fromMap(
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
