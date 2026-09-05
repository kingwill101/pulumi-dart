// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spring_cloud_app_identity.dart';
import 'get_spring_cloud_app_persistent_disk.dart';

/// Result data returned by getSpringCloudApp.
class GetSpringCloudAppResult {
  /// The Fully Qualified DNS Name.
  final String? fqdn;
  /// Is only HTTPS allowed?
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetSpringCloudAppIdentity>? identities;
  /// Does the Spring Cloud Application have public endpoint?
  final bool? isPublic;
  final String? name;
  /// A `persistentDisk` block as defined below.
  final List<GetSpringCloudAppPersistentDisk>? persistentDisks;
  final String? resourceGroupName;
  final String? serviceName;
  /// Is End to End TLS Enabled?
  final bool? tlsEnabled;
  /// The public endpoint of the Spring Cloud Application.
  final String? url;

  /// Creates a new [GetSpringCloudAppResult].
  /// [fqdn] The Fully Qualified DNS Name.
  /// [httpsOnly] Is only HTTPS allowed?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [isPublic] Does the Spring Cloud Application have public endpoint?
  /// [name] Optional.
  /// [persistentDisks] A `persistentDisk` block as defined below.
  /// [resourceGroupName] Optional.
  /// [serviceName] Optional.
  /// [tlsEnabled] Is End to End TLS Enabled?
  /// [url] The public endpoint of the Spring Cloud Application.
  const GetSpringCloudAppResult({
    this.fqdn,
    this.httpsOnly,
    this.id,
    this.identities,
    this.isPublic,
    this.name,
    this.persistentDisks,
    this.resourceGroupName,
    this.serviceName,
    this.tlsEnabled,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'httpsOnly': ?httpsOnly,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpringCloudAppIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isPublic': ?isPublic,
      'name': ?name,
      'persistentDisks': ?(() { final guardedValue = persistentDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpringCloudAppPersistentDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'serviceName': ?serviceName,
      'tlsEnabled': ?tlsEnabled,
      'url': ?url,
    };
  }

  factory GetSpringCloudAppResult.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudAppResult(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpringCloudAppIdentity>(guardedValue, (value) => GetSpringCloudAppIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      persistentDisks: (() { final guardedValue = map['persistentDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpringCloudAppPersistentDisk>(guardedValue, (value) => GetSpringCloudAppPersistentDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlsEnabled: (() { final guardedValue = map['tlsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
