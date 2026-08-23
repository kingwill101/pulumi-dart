// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_alias_response_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAlias.
class GetAliasResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified ID for the alias resource.
  final String id;
  /// Alias ID.
  final String name;
  /// Subscription Alias response properties.
  final SubscriptionAliasResponsePropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource type, Microsoft.Subscription/aliases.
  final String type;

  /// Creates a new [GetAliasResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified ID for the alias resource.
  /// [name] Alias ID.
  /// [properties] Subscription Alias response properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Resource type, Microsoft.Subscription/aliases.
  const GetAliasResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: SubscriptionAliasResponsePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
