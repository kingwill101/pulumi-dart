// ignore_for_file: unused_element, unnecessary_cast

import 'auth_config_response.dart';
import 'destination_config_response.dart';

/// Result data returned by getCustomConnectorVersion.
class GetCustomConnectorVersionResult {
  /// Configuration for establishing the authentication to the connector destination.
  final AuthConfigResponse? authConfig;
  /// Created time.
  final String? createTime;
  /// Configuration of the customConnector's destination.
  final DestinationConfigResponse? destinationConfig;
  /// Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  final bool? enableBackendDestinationConfig;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// Identifier. Resource name of the Version. Format: projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}
  final String? name;
  /// Optional. Location of the custom connector spec.
  final String? specLocation;
  /// Type of the customConnector.
  final String? type;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetCustomConnectorVersionResult].
  /// [authConfig] Configuration for establishing the authentication to the connector destination.
  /// [createTime] Created time.
  /// [destinationConfig] Configuration of the customConnector's destination.
  /// [enableBackendDestinationConfig] Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [name] Identifier. Resource name of the Version. Format: projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}
  /// [specLocation] Optional. Location of the custom connector spec.
  /// [type] Type of the customConnector.
  /// [updateTime] Updated time.
  const GetCustomConnectorVersionResult({
    this.authConfig,
    this.createTime,
    this.destinationConfig,
    this.enableBackendDestinationConfig,
    this.labels,
    this.name,
    this.specLocation,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?authConfig?.toMap(),
      'createTime': ?createTime,
      'destinationConfig': ?destinationConfig?.toMap(),
      'enableBackendDestinationConfig': ?enableBackendDestinationConfig,
      'labels': ?labels,
      'name': ?name,
      'specLocation': ?specLocation,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetCustomConnectorVersionResult.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorVersionResult(
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return AuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationConfig: (() { final guardedValue = map['destinationConfig']; if (guardedValue == null) return null; return DestinationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enableBackendDestinationConfig: (() { final guardedValue = map['enableBackendDestinationConfig']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specLocation: (() { final guardedValue = map['specLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
