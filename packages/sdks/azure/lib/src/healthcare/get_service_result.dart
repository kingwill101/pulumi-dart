// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_authentication_configuration.dart';
import 'get_service_cors_configuration.dart';

/// Result data returned by getService.
class GetServiceResult {
  final List<String> accessPolicyObjectIds;
  /// An `authentication_configuration` block as defined below.
  final List<GetServiceAuthenticationConfiguration> authenticationConfigurations;
  /// A `cors_configuration` block as defined below.
  final List<GetServiceCorsConfiguration> corsConfigurations;
  /// The versionless Key Vault Key ID for CMK encryption of the backing database.
  final String cosmosdbKeyVaultKeyVersionlessId;
  /// The provisioned throughput for the backing database.
  final int cosmosdbThroughput;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The type of the service.
  final String kind;
  /// The Azure Region where the Service is located.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetServiceResult].
  /// [accessPolicyObjectIds] Required.
  /// [authenticationConfigurations] An `authentication_configuration` block as defined below.
  /// [corsConfigurations] A `cors_configuration` block as defined below.
  /// [cosmosdbKeyVaultKeyVersionlessId] The versionless Key Vault Key ID for CMK encryption of the backing database.
  /// [cosmosdbThroughput] The provisioned throughput for the backing database.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kind] The type of the service.
  /// [location] The Azure Region where the Service is located.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags to assign to the resource.
  GetServiceResult({
    required this.accessPolicyObjectIds,
    required this.authenticationConfigurations,
    required this.corsConfigurations,
    required this.cosmosdbKeyVaultKeyVersionlessId,
    required this.cosmosdbThroughput,
    required this.id,
    required this.kind,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyObjectIds': accessPolicyObjectIds,
      'authenticationConfigurations': pulumi.Input.encodeList<GetServiceAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfigurations, (value) => value.toMap()),
      'corsConfigurations': pulumi.Input.encodeList<GetServiceCorsConfiguration, Map<String, dynamic>>(corsConfigurations, (value) => value.toMap()),
      'cosmosdbKeyVaultKeyVersionlessId': cosmosdbKeyVaultKeyVersionlessId,
      'cosmosdbThroughput': cosmosdbThroughput,
      'id': id,
      'kind': kind,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      accessPolicyObjectIds: (map['accessPolicyObjectIds'] as List).cast<String>(),
      authenticationConfigurations: pulumi.Input.decodeList<GetServiceAuthenticationConfiguration>(map['authenticationConfigurations']!, (value) => GetServiceAuthenticationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      corsConfigurations: pulumi.Input.decodeList<GetServiceCorsConfiguration>(map['corsConfigurations']!, (value) => GetServiceCorsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      cosmosdbKeyVaultKeyVersionlessId: map['cosmosdbKeyVaultKeyVersionlessId'] as String,
      cosmosdbThroughput: map['cosmosdbThroughput'] as int,
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

