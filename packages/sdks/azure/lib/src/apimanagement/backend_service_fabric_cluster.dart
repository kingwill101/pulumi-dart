// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_fabric_cluster_server_x509_name.dart';

class BackendServiceFabricCluster {
  /// The client certificate resource id for the management endpoint.
  ///
  /// &gt; **Note:** At least one of `clientCertificateThumbprint`, and `clientCertificateId` must be set.
  final pulumi.Input<String?>? clientCertificateId;
  /// The client certificate thumbprint for the management endpoint.
  final pulumi.Input<String?>? clientCertificateThumbprint;
  /// A list of cluster management endpoints.
  final pulumi.Input<List<String>> managementEndpoints;
  /// The maximum number of retries when attempting resolve the partition.
  final pulumi.Input<int> maxPartitionResolutionRetries;
  /// A list of thumbprints of the server certificates of the Service Fabric cluster.
  final pulumi.Input<List<String>?>? serverCertificateThumbprints;
  /// One or more `serverX509Name` blocks as documented below.
  final pulumi.Input<List<BackendServiceFabricClusterServerX509Name>?>? serverX509Names;

  /// Creates a new [BackendServiceFabricCluster].
  /// [clientCertificateId] The client certificate resource id for the management endpoint.
  /// [clientCertificateThumbprint] The client certificate thumbprint for the management endpoint.
  /// [managementEndpoints] A list of cluster management endpoints.
  /// [maxPartitionResolutionRetries] The maximum number of retries when attempting resolve the partition.
  /// [serverCertificateThumbprints] A list of thumbprints of the server certificates of the Service Fabric cluster.
  /// [serverX509Names] One or more `serverX509Name` blocks as documented below.
  const BackendServiceFabricCluster({
    this.clientCertificateId,
    this.clientCertificateThumbprint,
    required this.managementEndpoints,
    required this.maxPartitionResolutionRetries,
    this.serverCertificateThumbprints,
    this.serverX509Names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateId': ?clientCertificateId,
      'clientCertificateThumbprint': ?clientCertificateThumbprint,
      'managementEndpoints': managementEndpoints,
      'maxPartitionResolutionRetries': maxPartitionResolutionRetries,
      'serverCertificateThumbprints': ?serverCertificateThumbprints,
      'serverX509Names': ?pulumi.Input.mapOptionalInputValue<List<BackendServiceFabricClusterServerX509Name>, List<Map<String, dynamic>>>(serverX509Names, (value) => pulumi.Input.encodeList<BackendServiceFabricClusterServerX509Name, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendServiceFabricCluster.fromMap(Map<String, dynamic> map) {
    return BackendServiceFabricCluster(
      clientCertificateId: (() { final guardedValue = map['clientCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateThumbprint: (() { final guardedValue = map['clientCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementEndpoints: pulumi.Input.fromValue((map['managementEndpoints'] as List).cast<String>()),
      maxPartitionResolutionRetries: pulumi.Input.fromValue((map['maxPartitionResolutionRetries'] as num).toInt()),
      serverCertificateThumbprints: (() { final guardedValue = map['serverCertificateThumbprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverX509Names: (() { final guardedValue = map['serverX509Names']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendServiceFabricClusterServerX509Name>(guardedValue, (value) => BackendServiceFabricClusterServerX509Name.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
