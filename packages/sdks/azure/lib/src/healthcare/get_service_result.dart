// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_authentication_configuration.dart';
import 'get_service_cors_configuration.dart';

/// Result data returned by getService.
class GetServiceResult {
  final List<String>? accessPolicyObjectIds;
  /// An `authenticationConfiguration` block as defined below.
  final List<GetServiceAuthenticationConfiguration>? authenticationConfigurations;
  /// A `corsConfiguration` block as defined below.
  final List<GetServiceCorsConfiguration>? corsConfigurations;
  /// The versionless Key Vault Key ID for CMK encryption of the backing database.
  final String? cosmosdbKeyVaultKeyVersionlessId;
  /// The provisioned throughput for the backing database.
  final int? cosmosdbThroughput;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The type of the service.
  final String? kind;
  /// The Azure Region where the Service is located.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetServiceResult].
  /// [accessPolicyObjectIds] Optional.
  /// [authenticationConfigurations] An `authenticationConfiguration` block as defined below.
  /// [corsConfigurations] A `corsConfiguration` block as defined below.
  /// [cosmosdbKeyVaultKeyVersionlessId] The versionless Key Vault Key ID for CMK encryption of the backing database.
  /// [cosmosdbThroughput] The provisioned throughput for the backing database.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kind] The type of the service.
  /// [location] The Azure Region where the Service is located.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  const GetServiceResult({
    this.accessPolicyObjectIds,
    this.authenticationConfigurations,
    this.corsConfigurations,
    this.cosmosdbKeyVaultKeyVersionlessId,
    this.cosmosdbThroughput,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyObjectIds': ?accessPolicyObjectIds,
      'authenticationConfigurations': ?(() { final guardedValue = authenticationConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceAuthenticationConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'corsConfigurations': ?(() { final guardedValue = corsConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceCorsConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cosmosdbKeyVaultKeyVersionlessId': ?cosmosdbKeyVaultKeyVersionlessId,
      'cosmosdbThroughput': ?cosmosdbThroughput,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      accessPolicyObjectIds: (() { final guardedValue = map['accessPolicyObjectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      authenticationConfigurations: (() { final guardedValue = map['authenticationConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceAuthenticationConfiguration>(guardedValue, (value) => GetServiceAuthenticationConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      corsConfigurations: (() { final guardedValue = map['corsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceCorsConfiguration>(guardedValue, (value) => GetServiceCorsConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      cosmosdbKeyVaultKeyVersionlessId: (() { final guardedValue = map['cosmosdbKeyVaultKeyVersionlessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cosmosdbThroughput: (() { final guardedValue = map['cosmosdbThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
