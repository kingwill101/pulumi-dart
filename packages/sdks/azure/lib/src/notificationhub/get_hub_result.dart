// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_apns_credential.dart';
import 'get_hub_gcm_credential.dart';

/// Result data returned by getHub.
class GetHubResult {
  /// A `apns_credential` block as defined below.
  final List<GetHubApnsCredential> apnsCredentials;
  /// A `gcm_credential` block as defined below.
  final List<GetHubGcmCredential> gcmCredentials;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region in which this Notification Hub exists.
  final String location;
  final String name;
  final String namespaceName;
  final String resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetHubResult].
  /// [apnsCredentials] A `apns_credential` block as defined below.
  /// [gcmCredentials] A `gcm_credential` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which this Notification Hub exists.
  /// [name] Required.
  /// [namespaceName] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags to assign to the resource.
  GetHubResult({
    required this.apnsCredentials,
    required this.gcmCredentials,
    required this.id,
    required this.location,
    required this.name,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apnsCredentials': pulumi.Input.encodeList<GetHubApnsCredential, Map<String, dynamic>>(apnsCredentials, (value) => value.toMap()),
      'gcmCredentials': pulumi.Input.encodeList<GetHubGcmCredential, Map<String, dynamic>>(gcmCredentials, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetHubResult.fromMap(Map<String, dynamic> map) {
    return GetHubResult(
      apnsCredentials: pulumi.Input.decodeList<GetHubApnsCredential>(map['apnsCredentials'], (value) => GetHubApnsCredential.fromMap((value as Map).cast<String, dynamic>())),
      gcmCredentials: pulumi.Input.decodeList<GetHubGcmCredential>(map['gcmCredentials'], (value) => GetHubGcmCredential.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

