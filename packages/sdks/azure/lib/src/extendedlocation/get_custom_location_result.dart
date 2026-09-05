// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_location_authentication.dart';

/// Result data returned by getCustomLocation.
class GetCustomLocationResult {
  /// An `authentication` block as defined below.
  final List<GetCustomLocationAuthentication>? authentications;
  /// The list of Cluster Extension IDs.
  final List<String>? clusterExtensionIds;
  /// The display name of the Custom Location.
  final String? displayName;
  /// The host resource ID.
  final String? hostResourceId;
  /// The host type of the Custom Location.
  final String? hostType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location where the Custom Location exists.
  final String? location;
  final String? name;
  /// The namespace of the Custom Location.
  final String? namespace;
  final String? resourceGroupName;

  /// Creates a new [GetCustomLocationResult].
  /// [authentications] An `authentication` block as defined below.
  /// [clusterExtensionIds] The list of Cluster Extension IDs.
  /// [displayName] The display name of the Custom Location.
  /// [hostResourceId] The host resource ID.
  /// [hostType] The host type of the Custom Location.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Custom Location exists.
  /// [name] Optional.
  /// [namespace] The namespace of the Custom Location.
  /// [resourceGroupName] Optional.
  const GetCustomLocationResult({
    this.authentications,
    this.clusterExtensionIds,
    this.displayName,
    this.hostResourceId,
    this.hostType,
    this.id,
    this.location,
    this.name,
    this.namespace,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?(() { final guardedValue = authentications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomLocationAuthentication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterExtensionIds': ?clusterExtensionIds,
      'displayName': ?displayName,
      'hostResourceId': ?hostResourceId,
      'hostType': ?hostType,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'namespace': ?namespace,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetCustomLocationResult.fromMap(Map<String, dynamic> map) {
    return GetCustomLocationResult(
      authentications: (() { final guardedValue = map['authentications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomLocationAuthentication>(guardedValue, (value) => GetCustomLocationAuthentication.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterExtensionIds: (() { final guardedValue = map['clusterExtensionIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostResourceId: (() { final guardedValue = map['hostResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostType: (() { final guardedValue = map['hostType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
