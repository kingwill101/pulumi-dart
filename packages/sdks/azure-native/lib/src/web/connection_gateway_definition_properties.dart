// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_gateway_reference.dart';

class ConnectionGatewayDefinitionProperties {
  /// The URI of the backend
  final pulumi.Input<String>? backendUri;
  /// The gateway installation reference
  final pulumi.Input<ConnectionGatewayReference>? connectionGatewayInstallation;
  /// The gateway admin
  final pulumi.Input<List<String>>? contactInformation;
  /// The gateway description
  final pulumi.Input<String>? description;
  /// The gateway display name
  final pulumi.Input<String>? displayName;
  /// The machine name of the gateway
  final pulumi.Input<String>? machineName;
  /// The gateway status
  final pulumi.Input<dynamic>? status;

  /// Creates a new [ConnectionGatewayDefinitionProperties].
  /// [backendUri] The URI of the backend
  /// [connectionGatewayInstallation] The gateway installation reference
  /// [contactInformation] The gateway admin
  /// [description] The gateway description
  /// [displayName] The gateway display name
  /// [machineName] The machine name of the gateway
  /// [status] The gateway status
  ConnectionGatewayDefinitionProperties({
    this.backendUri,
    this.connectionGatewayInstallation,
    this.contactInformation,
    this.description,
    this.displayName,
    this.machineName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendUri': ?backendUri,
      'connectionGatewayInstallation': ?pulumi.Input.mapOptionalInputValue<ConnectionGatewayReference, Map<String, dynamic>>(connectionGatewayInstallation, (value) => value.toMap()),
      'contactInformation': ?contactInformation,
      'description': ?description,
      'displayName': ?displayName,
      'machineName': ?machineName,
      'status': ?status,
    };
  }

  factory ConnectionGatewayDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionGatewayDefinitionProperties(
      backendUri: map['backendUri'] == null ? null : (map['backendUri'] as String).input(),
      connectionGatewayInstallation: map['connectionGatewayInstallation'] == null ? null : (ConnectionGatewayReference.fromMap((map['connectionGatewayInstallation'] as Map).cast<String, dynamic>())).input(),
      contactInformation: map['contactInformation'] == null ? null : ((map['contactInformation'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      machineName: map['machineName'] == null ? null : (map['machineName'] as String).input(),
      status: map['status'] == null ? null : (map['status']).input(),
    );
  }
}

