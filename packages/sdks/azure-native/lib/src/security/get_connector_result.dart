// ignore_for_file: unused_element, unnecessary_cast

import 'aw_assume_role_authentication_details_properties_response.dart';
import 'hybrid_compute_settings_properties_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// Settings for authentication management, these settings are relevant only for the cloud connector.
  final AwAssumeRoleAuthenticationDetailsPropertiesResponse? authenticationDetails;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Settings for hybrid compute management. These settings are relevant only for Arc autoProvision (Hybrid Compute).
  final HybridComputeSettingsPropertiesResponse? hybridComputeSettings;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// Resource type
  final String type;

  /// Creates a new [GetConnectorResult].
  /// [authenticationDetails] Settings for authentication management, these settings are relevant only for the cloud connector.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hybridComputeSettings] Settings for hybrid compute management. These settings are relevant only for Arc autoProvision (Hybrid Compute).
  /// [id] Resource Id
  /// [name] Resource name
  /// [type] Resource type
  const GetConnectorResult({
    this.authenticationDetails,
    required this.azureApiVersion,
    this.hybridComputeSettings,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDetails': ?authenticationDetails?.toMap(),
      'azureApiVersion': azureApiVersion,
      'hybridComputeSettings': ?hybridComputeSettings?.toMap(),
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      authenticationDetails: (() { final guardedValue = map['authenticationDetails']; if (guardedValue == null) return null; return AwAssumeRoleAuthenticationDetailsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      hybridComputeSettings: (() { final guardedValue = map['hybridComputeSettings']; if (guardedValue == null) return null; return HybridComputeSettingsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

