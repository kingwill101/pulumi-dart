// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_identity.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Kusto Cluster URI to be used for data ingestion.
  final String dataIngestionUri;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetClusterIdentity> identities;
  final String location;
  final String name;
  final String resourceGroupName;
  final Map<String, String> tags;
  /// The FQDN of the Azure Kusto Cluster.
  final String uri;

  /// Creates a new [GetClusterResult].
  /// [dataIngestionUri] The Kusto Cluster URI to be used for data ingestion.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] Required.
  /// [uri] The FQDN of the Azure Kusto Cluster.
  const GetClusterResult({
    required this.dataIngestionUri,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIngestionUri': dataIngestionUri,
      'id': id,
      'identities': pulumi.Input.encodeList<GetClusterIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'uri': uri,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      dataIngestionUri: map['dataIngestionUri'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetClusterIdentity>(map['identities']!, (value) => GetClusterIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
    );
  }
}

