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
      'apiDefinitions': ?pulumi.Input.mapOptionalInputValue<ApiResourceDefinitions, Map<String, dynamic>>(apiDefinitions, (value) => value.toMap()),
      'apiType': ?apiType,
      'backendService': ?pulumi.Input.mapOptionalInputValue<ApiResourceBackendService, Map<String, dynamic>>(backendService, (value) => value.toMap()),
      'brandColor': ?brandColor,
      'capabilities': ?capabilities,
      'connectionParameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ConnectionParameter>, Map<String, Map<String, dynamic>>>(connectionParameters, (value) => pulumi.Input.encodeMapValues<ConnectionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'iconUri': ?iconUri,
      'runtimeUrls': ?runtimeUrls,
      'swagger': ?swagger,
      'wsdlDefinition': ?pulumi.Input.mapOptionalInputValue<WsdlDefinition, Map<String, dynamic>>(wsdlDefinition, (value) => value.toMap()),
    };
  }

  factory CustomApiPropertiesDefinition.fromMap(Map<String, dynamic> map) {
    return CustomApiPropertiesDefinition(
      apiDefinitions: map['apiDefinitions'] == null ? null : (ApiResourceDefinitions.fromMap((map['apiDefinitions']! as Map).cast<String, dynamic>())).input(),
      apiType: map['apiType'] == null ? null : (map['apiType']! as String).input(),
      backendService: map['backendService'] == null ? null : (ApiResourceBackendService.fromMap((map['backendService']! as Map).cast<String, dynamic>())).input(),
      brandColor: map['brandColor'] == null ? null : (map['brandColor']! as String).input(),
      capabilities: map['capabilities'] == null ? null : ((map['capabilities']! as List).cast<String>()).input(),
      connectionParameters: map['connectionParameters'] == null ? null : (pulumi.Input.decodeMapValues<ConnectionParameter>(map['connectionParameters']!, (value) => ConnectionParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      iconUri: map['iconUri'] == null ? null : (map['iconUri']! as String).input(),
      runtimeUrls: map['runtimeUrls'] == null ? null : ((map['runtimeUrls']! as List).cast<String>()).input(),
      swagger: map['swagger'] == null ? null : (map['swagger']!).input(),
      wsdlDefinition: map['wsdlDefinition'] == null ? null : (WsdlDefinition.fromMap((map['wsdlDefinition']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

