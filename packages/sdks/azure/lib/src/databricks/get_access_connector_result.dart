// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_connector_identity.dart';

/// Result data returned by getAccessConnector.
class GetAccessConnectorResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetAccessConnectorIdentity> identities;

  /// The Azure Region where the Databricks Access Connector exists.
  final String location;
  final String name;
  final String resourceGroupName;

  /// A mapping of tags assigned to the Databricks Access Connector.
  final Map<String, String> tags;

  /// Creates a new [GetAccessConnectorResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] The Azure Region where the Databricks Access Connector exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Databricks Access Connector.
  GetAccessConnectorResult({
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities':
          pulumi.Input.encodeList<
            GetAccessConnectorIdentity,
            Map<String, dynamic>
          >(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetAccessConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAccessConnectorResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetAccessConnectorIdentity>(
        map['identities']!,
        (value) => GetAccessConnectorIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
