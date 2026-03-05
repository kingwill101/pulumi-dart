// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_test_source_app_engine_version.dart';
import 'connectivity_test_source_cloud_function.dart';
import 'connectivity_test_source_cloud_run_revision.dart';

class ConnectivityTestSource {
  /// An App Engine service version.
  /// Structure is documented below.
  final pulumi.Input<ConnectivityTestSourceAppEngineVersion>? appEngineVersion;
  /// A Cloud Function.
  /// Structure is documented below.
  final pulumi.Input<ConnectivityTestSourceCloudFunction>? cloudFunction;
  /// A Cloud Run revision.
  /// Structure is documented below.
  final pulumi.Input<ConnectivityTestSourceCloudRunRevision>? cloudRunRevision;
  /// A Cloud SQL instance URI.
  final pulumi.Input<String>? cloudSqlInstance;
  /// A cluster URI for Google Kubernetes Engine cluster control plane.
  final pulumi.Input<String>? gkeMasterCluster;
  /// A Compute Engine instance URI.
  final pulumi.Input<String>? instance;
  /// The IP address of the endpoint, which can be an external or internal IP.
  final pulumi.Input<String>? ipAddress;
  /// A VPC network URI.
  final pulumi.Input<String>? network;
  /// Type of the network where the endpoint is located.
  /// Possible values are: `GCP_NETWORK`, `NON_GCP_NETWORK`.
  final pulumi.Input<String>? networkType;
  /// The IP protocol port of the endpoint. Only applicable when protocol is
  /// TCP or UDP.
  final pulumi.Input<int>? port;
  /// Project ID where the endpoint is located.
  /// The project ID can be derived from the URI if you provide a endpoint or
  /// network URI.
  /// The following are two cases where you may need to provide the project ID:
  /// 1. Only the IP address is specified, and the IP address is within a Google
  /// Cloud project.
  /// 2. When you are using Shared VPC and the IP address that you provide is
  /// from the service project. In this case, the network that the IP address
  /// resides in is defined in the host project.
  final pulumi.Input<String>? projectId;

  /// Creates a new [ConnectivityTestSource].
  /// [appEngineVersion] An App Engine service version.
  /// [cloudFunction] A Cloud Function.
  /// [cloudRunRevision] A Cloud Run revision.
  /// [cloudSqlInstance] A Cloud SQL instance URI.
  /// [gkeMasterCluster] A cluster URI for Google Kubernetes Engine cluster control plane.
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint, which can be an external or internal IP.
  /// [network] A VPC network URI.
  /// [networkType] Type of the network where the endpoint is located.
  /// [port] The IP protocol port of the endpoint. Only applicable when protocol is
  /// [projectId] Project ID where the endpoint is located.
  ConnectivityTestSource({
    this.appEngineVersion,
    this.cloudFunction,
    this.cloudRunRevision,
    this.cloudSqlInstance,
    this.gkeMasterCluster,
    this.instance,
    this.ipAddress,
    this.network,
    this.networkType,
    this.port,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineVersion': ?pulumi.Input.mapOptionalInputValue<ConnectivityTestSourceAppEngineVersion, Map<String, dynamic>>(appEngineVersion, (value) => value.toMap()),
      'cloudFunction': ?pulumi.Input.mapOptionalInputValue<ConnectivityTestSourceCloudFunction, Map<String, dynamic>>(cloudFunction, (value) => value.toMap()),
      'cloudRunRevision': ?pulumi.Input.mapOptionalInputValue<ConnectivityTestSourceCloudRunRevision, Map<String, dynamic>>(cloudRunRevision, (value) => value.toMap()),
      'cloudSqlInstance': ?cloudSqlInstance,
      'gkeMasterCluster': ?gkeMasterCluster,
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'network': ?network,
      'networkType': ?networkType,
      'port': ?port,
      'projectId': ?projectId,
    };
  }

  factory ConnectivityTestSource.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestSource(
      appEngineVersion: (() { final guardedValue = map['appEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityTestSourceAppEngineVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudFunction: (() { final guardedValue = map['cloudFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityTestSourceCloudFunction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudRunRevision: (() { final guardedValue = map['cloudRunRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityTestSourceCloudRunRevision.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudSqlInstance: (() { final guardedValue = map['cloudSqlInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gkeMasterCluster: (() { final guardedValue = map['gkeMasterCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

