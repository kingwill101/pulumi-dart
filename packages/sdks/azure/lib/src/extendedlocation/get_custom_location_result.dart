// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_location_authentication.dart';

/// Result data returned by getCustomLocation.
class GetCustomLocationResult {
  /// An `authentication` block as defined below.
  final List<GetCustomLocationAuthentication> authentications;
  /// The list of Cluster Extension IDs.
  final List<String> clusterExtensionIds;
  /// The display name of the Custom Location.
  final String displayName;
  /// The host resource ID.
  final String hostResourceId;
  /// The host type of the Custom Location.
  final String hostType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location where the Custom Location exists.
  final String location;
  final String name;
  /// The namespace of the Custom Location.
  final String namespace;
  final String resourceGroupName;

  /// Creates a new [GetCustomLocationResult].
  /// [authentications] An `authentication` block as defined below.
  /// [clusterExtensionIds] The list of Cluster Extension IDs.
  /// [displayName] The display name of the Custom Location.
  /// [hostResourceId] The host resource ID.
  /// [hostType] The host type of the Custom Location.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Custom Location exists.
  /// [name] Required.
  /// [namespace] The namespace of the Custom Location.
  /// [resourceGroupName] Required.
  GetCustomLocationResult({
    required this.authentications,
    required this.clusterExtensionIds,
    required this.displayName,
    required this.hostResourceId,
    required this.hostType,
    required this.id,
    required this.location,
    required this.name,
    required this.namespace,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.encodeList<GetCustomLocationAuthentication, Map<String, dynamic>>(authentications, (value) => value.toMap()),
      'clusterExtensionIds': clusterExtensionIds,
      'displayName': displayName,
      'hostResourceId': hostResourceId,
      'hostType': hostType,
      'id': id,
      'location': location,
      'name': name,
      'namespace': namespace,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCustomLocationResult.fromMap(Map<String, dynamic> map) {
    return GetCustomLocationResult(
      authentications: pulumi.Input.decodeList<GetCustomLocationAuthentication>(map['authentications'], (value) => GetCustomLocationAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      clusterExtensionIds: (map['clusterExtensionIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      hostResourceId: map['hostResourceId'] as String,
      hostType: map['hostType'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

