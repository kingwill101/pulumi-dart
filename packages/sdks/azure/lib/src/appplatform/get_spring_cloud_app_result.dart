// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spring_cloud_app_identity.dart';
import 'get_spring_cloud_app_persistent_disk.dart';

/// Result data returned by getSpringCloudApp.
class GetSpringCloudAppResult {
  /// The Fully Qualified DNS Name.
  final String fqdn;
  /// Is only HTTPS allowed?
  final bool httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetSpringCloudAppIdentity> identities;
  /// Does the Spring Cloud Application have public endpoint?
  final bool isPublic;
  final String name;
  /// A `persistent_disk` block as defined below.
  final List<GetSpringCloudAppPersistentDisk> persistentDisks;
  final String resourceGroupName;
  final String serviceName;
  /// Is End to End TLS Enabled?
  final bool tlsEnabled;
  /// The public endpoint of the Spring Cloud Application.
  final String url;

  /// Creates a new [GetSpringCloudAppResult].
  /// [fqdn] The Fully Qualified DNS Name.
  /// [httpsOnly] Is only HTTPS allowed?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [isPublic] Does the Spring Cloud Application have public endpoint?
  /// [name] Required.
  /// [persistentDisks] A `persistent_disk` block as defined below.
  /// [resourceGroupName] Required.
  /// [serviceName] Required.
  /// [tlsEnabled] Is End to End TLS Enabled?
  /// [url] The public endpoint of the Spring Cloud Application.
  GetSpringCloudAppResult({
    required this.fqdn,
    required this.httpsOnly,
    required this.id,
    required this.identities,
    required this.isPublic,
    required this.name,
    required this.persistentDisks,
    required this.resourceGroupName,
    required this.serviceName,
    required this.tlsEnabled,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'httpsOnly': httpsOnly,
      'id': id,
      'identities': pulumi.Input.encodeList<GetSpringCloudAppIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'isPublic': isPublic,
      'name': name,
      'persistentDisks': pulumi.Input.encodeList<GetSpringCloudAppPersistentDisk, Map<String, dynamic>>(persistentDisks, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tlsEnabled': tlsEnabled,
      'url': url,
    };
  }

  factory GetSpringCloudAppResult.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudAppResult(
      fqdn: map['fqdn'] as String,
      httpsOnly: map['httpsOnly'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetSpringCloudAppIdentity>(map['identities'], (value) => GetSpringCloudAppIdentity.fromMap((value as Map).cast<String, dynamic>())),
      isPublic: map['isPublic'] as bool,
      name: map['name'] as String,
      persistentDisks: pulumi.Input.decodeList<GetSpringCloudAppPersistentDisk>(map['persistentDisks'], (value) => GetSpringCloudAppPersistentDisk.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tlsEnabled: map['tlsEnabled'] as bool,
      url: map['url'] as String,
    );
  }
}

