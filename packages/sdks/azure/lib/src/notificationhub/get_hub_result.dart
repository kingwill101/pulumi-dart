// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_apns_credential.dart';
import 'get_hub_gcm_credential.dart';

/// Result data returned by getHub.
class GetHubResult {
  /// A `apnsCredential` block as defined below.
  final List<GetHubApnsCredential>? apnsCredentials;
  /// A `gcmCredential` block as defined below.
  final List<GetHubGcmCredential>? gcmCredentials;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region in which this Notification Hub exists.
  final String? location;
  final String? name;
  final String? namespaceName;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetHubResult].
  /// [apnsCredentials] A `apnsCredential` block as defined below.
  /// [gcmCredentials] A `gcmCredential` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which this Notification Hub exists.
  /// [name] Optional.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  const GetHubResult({
    this.apnsCredentials,
    this.gcmCredentials,
    this.id,
    this.location,
    this.name,
    this.namespaceName,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apnsCredentials': ?(() { final guardedValue = apnsCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHubApnsCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gcmCredentials': ?(() { final guardedValue = gcmCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHubGcmCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetHubResult.fromMap(Map<String, dynamic> map) {
    return GetHubResult(
      apnsCredentials: (() { final guardedValue = map['apnsCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHubApnsCredential>(guardedValue, (value) => GetHubApnsCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      gcmCredentials: (() { final guardedValue = map['gcmCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHubGcmCredential>(guardedValue, (value) => GetHubGcmCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
