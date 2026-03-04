// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_resource_backend_service.dart';
import 'api_resource_definitions.dart';
import 'connection_parameter.dart';
import 'wsdl_definition.dart';

/// Custom API properties
class CustomApiPropertiesDefinition {
  /// API Definitions
  final pulumi.Input<ApiResourceDefinitions>? apiDefinitions;

  /// The API type
  final pulumi.Input<String>? apiType;

  /// The API backend service
  final pulumi.Input<ApiResourceBackendService>? backendService;

  /// Brand color
  final pulumi.Input<String>? brandColor;

  /// The custom API capabilities
  final pulumi.Input<List<String>>? capabilities;

  /// Connection parameters
  final pulumi.Input<Map<String, ConnectionParameter>>? connectionParameters;

  /// The custom API description
  final pulumi.Input<String>? description;

  /// The display name
  final pulumi.Input<String>? displayName;

  /// The icon URI
  final pulumi.Input<String>? iconUri;

  /// Runtime URLs
  final pulumi.Input<List<String>>? runtimeUrls;

  /// The JSON representation of the swagger
  final pulumi.Input<dynamic>? swagger;

  /// The WSDL definition
  final pulumi.Input<WsdlDefinition>? wsdlDefinition;

  /// Creates a new [CustomApiPropertiesDefinition].
  /// [apiDefinitions] API Definitions
  /// [apiType] The API type
  /// [backendService] The API backend service
  /// [brandColor] Brand color
  /// [capabilities] The custom API capabilities
  /// [connectionParameters] Connection parameters
  /// [description] The custom API description
  /// [displayName] The display name
  /// [iconUri] The icon URI
  /// [runtimeUrls] Runtime URLs
  /// [swagger] The JSON representation of the swagger
  /// [wsdlDefinition] The WSDL definition
  CustomApiPropertiesDefinition({
    this.apiDefinitions,
    this.apiType,
    this.backendService,
    this.brandColor,
    this.capabilities,
    this.connectionParameters,
    this.description,
    this.displayName,
    this.iconUri,
    this.runtimeUrls,
    this.swagger,
    this.wsdlDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiDefinitions':
          ?pulumi.Input.mapOptionalInputValue<
            ApiResourceDefinitions,
            Map<String, dynamic>
          >(apiDefinitions, (value) => value.toMap()),
      'apiType': ?apiType,
      'backendService':
          ?pulumi.Input.mapOptionalInputValue<
            ApiResourceBackendService,
            Map<String, dynamic>
          >(backendService, (value) => value.toMap()),
      'brandColor': ?brandColor,
      'capabilities': ?capabilities,
      'connectionParameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ConnectionParameter>,
            Map<String, Map<String, dynamic>>
          >(
            connectionParameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ConnectionParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'displayName': ?displayName,
      'iconUri': ?iconUri,
      'runtimeUrls': ?runtimeUrls,
      'swagger': ?swagger,
      'wsdlDefinition':
          ?pulumi.Input.mapOptionalInputValue<
            WsdlDefinition,
            Map<String, dynamic>
          >(wsdlDefinition, (value) => value.toMap()),
    };
  }

  factory CustomApiPropertiesDefinition.fromMap(Map<String, dynamic> map) {
    return CustomApiPropertiesDefinition(
      apiDefinitions: (() {
        final guardedValue = map['apiDefinitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiResourceDefinitions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      apiType: (() {
        final guardedValue = map['apiType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backendService: (() {
        final guardedValue = map['backendService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiResourceBackendService.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      brandColor: (() {
        final guardedValue = map['brandColor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      connectionParameters: (() {
        final guardedValue = map['connectionParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ConnectionParameter>(
            guardedValue,
            (value) => ConnectionParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iconUri: (() {
        final guardedValue = map['iconUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeUrls: (() {
        final guardedValue = map['runtimeUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      swagger: (() {
        final guardedValue = map['swagger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      wsdlDefinition: (() {
        final guardedValue = map['wsdlDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WsdlDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
