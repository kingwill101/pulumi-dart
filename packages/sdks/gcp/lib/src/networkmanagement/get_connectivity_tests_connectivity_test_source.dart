// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_tests_connectivity_test_source_app_engine_version.dart';
import 'get_connectivity_tests_connectivity_test_source_cloud_function.dart';
import 'get_connectivity_tests_connectivity_test_source_cloud_run_revision.dart';

class GetConnectivityTestsConnectivityTestSource {
  /// An App Engine service version.
  /// Structure is documented below.
  final pulumi.Input<List<GetConnectivityTestsConnectivityTestSourceAppEngineVersion>> appEngineVersions;
  /// A Cloud Function.
  /// Structure is documented below.
  final pulumi.Input<List<GetConnectivityTestsConnectivityTestSourceCloudFunction>> cloudFunctions;
  /// A Cloud Run revision.
  /// Structure is documented below.
  final pulumi.Input<List<GetConnectivityTestsConnectivityTestSourceCloudRunRevision>> cloudRunRevisions;
  /// A Cloud SQL instance URI.
  final pulumi.Input<String> cloudSqlInstance;
  /// A cluster URI for Google Kubernetes Engine cluster control plane.
  final pulumi.Input<String> gkeMasterCluster;
  /// A Compute Engine instance URI.
  final pulumi.Input<String> instance;
  /// The IP address of the endpoint.
  final pulumi.Input<String> ipAddress;
  /// A VPC network URI.
  final pulumi.Input<String> network;
  /// Type of the network where the endpoint is located.
  final pulumi.Input<String> networkType;
  /// The IP protocol port of the endpoint.
  final pulumi.Input<int> port;
  /// Project ID where the endpoint is located.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetConnectivityTestsConnectivityTestSource].
  /// [appEngineVersions] An App Engine service version.
  /// [cloudFunctions] A Cloud Function.
  /// [cloudRunRevisions] A Cloud Run revision.
  /// [cloudSqlInstance] A Cloud SQL instance URI.
  /// [gkeMasterCluster] A cluster URI for Google Kubernetes Engine cluster control plane.
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint.
  /// [network] A VPC network URI.
  /// [networkType] Type of the network where the endpoint is located.
  /// [port] The IP protocol port of the endpoint.
  /// [projectId] Project ID where the endpoint is located.
  GetConnectivityTestsConnectivityTestSource({
    required this.appEngineVersions,
    required this.cloudFunctions,
    required this.cloudRunRevisions,
    required this.cloudSqlInstance,
    required this.gkeMasterCluster,
    required this.instance,
    required this.ipAddress,
    required this.network,
    required this.networkType,
    required this.port,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineVersions': pulumi.Input.mapInputValue<List<GetConnectivityTestsConnectivityTestSourceAppEngineVersion>, List<Map<String, dynamic>>>(appEngineVersions, (value) => pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestSourceAppEngineVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudFunctions': pulumi.Input.mapInputValue<List<GetConnectivityTestsConnectivityTestSourceCloudFunction>, List<Map<String, dynamic>>>(cloudFunctions, (value) => pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestSourceCloudFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudRunRevisions': pulumi.Input.mapInputValue<List<GetConnectivityTestsConnectivityTestSourceCloudRunRevision>, List<Map<String, dynamic>>>(cloudRunRevisions, (value) => pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestSourceCloudRunRevision, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudSqlInstance': cloudSqlInstance,
      'gkeMasterCluster': gkeMasterCluster,
      'instance': instance,
      'ipAddress': ipAddress,
      'network': network,
      'networkType': networkType,
      'port': port,
      'projectId': projectId,
    };
  }

  factory GetConnectivityTestsConnectivityTestSource.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestSource(
      appEngineVersions: (pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSourceAppEngineVersion>(map['appEngineVersions'], (value) => GetConnectivityTestsConnectivityTestSourceAppEngineVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudFunctions: (pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSourceCloudFunction>(map['cloudFunctions'], (value) => GetConnectivityTestsConnectivityTestSourceCloudFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudRunRevisions: (pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSourceCloudRunRevision>(map['cloudRunRevisions'], (value) => GetConnectivityTestsConnectivityTestSourceCloudRunRevision.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudSqlInstance: (map['cloudSqlInstance'] as String).input(),
      gkeMasterCluster: (map['gkeMasterCluster'] as String).input(),
      instance: (map['instance'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      network: (map['network'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      port: (map['port'] as int).input(),
      projectId: (map['projectId'] as String).input(),
    );
  }
}

