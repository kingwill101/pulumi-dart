// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_identity.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Kusto Cluster URI to be used for data ingestion.
  final String? dataIngestionUri;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetClusterIdentity>? identities;
  final String? location;
  final String? name;
  final String? resourceGroupName;
  final Map<String, String>? tags;
  /// The FQDN of the Azure Kusto Cluster.
  final String? uri;

  /// Creates a new [GetClusterResult].
  /// [dataIngestionUri] The Kusto Cluster URI to be used for data ingestion.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] Optional.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] Optional.
  /// [uri] The FQDN of the Azure Kusto Cluster.
  const GetClusterResult({
    this.dataIngestionUri,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIngestionUri': ?dataIngestionUri,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'uri': ?uri,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      dataIngestionUri: (() { final guardedValue = map['dataIngestionUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterIdentity>(guardedValue, (value) => GetClusterIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
