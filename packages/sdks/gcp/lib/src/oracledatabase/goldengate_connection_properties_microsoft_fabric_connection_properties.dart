// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties {
  /// Azure client ID of the application.
  final pulumi.Input<String>? clientId;
  /// Client secret associated with the client id.
  final pulumi.Input<String>? clientSecret;
  /// Optional Microsoft Fabric service endpoint.
  /// Default value: https://onelake.dfs.fabric.microsoft.com
  final pulumi.Input<String>? endpoint;
  /// The technology type of MicrosoftFabricConnection.
  final pulumi.Input<String>? technologyType;
  /// Azure tenant ID of the application.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties].
  /// [clientId] Azure client ID of the application.
  /// [clientSecret] Client secret associated with the client id.
  /// [endpoint] Optional Microsoft Fabric service endpoint.
  /// [technologyType] The technology type of MicrosoftFabricConnection.
  /// [tenantId] Azure tenant ID of the application.
  const GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties({
    this.clientId,
    this.clientSecret,
    this.endpoint,
    this.technologyType,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'endpoint': ?endpoint,
      'technologyType': ?technologyType,
      'tenantId': ?tenantId,
    };
  }

  factory GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesMicrosoftFabricConnectionProperties(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
