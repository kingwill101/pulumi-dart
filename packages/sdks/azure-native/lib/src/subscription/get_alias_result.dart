// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_alias_response_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAlias.
class GetAliasResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified ID for the alias resource.
  final String? id;
  /// Alias ID.
  final String? name;
  /// Subscription Alias response properties.
  final SubscriptionAliasResponsePropertiesResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource type, Microsoft.Subscription/aliases.
  final String? type;

  /// Creates a new [GetAliasResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified ID for the alias resource.
  /// [name] Alias ID.
  /// [properties] Subscription Alias response properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Resource type, Microsoft.Subscription/aliases.
  const GetAliasResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return SubscriptionAliasResponsePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
