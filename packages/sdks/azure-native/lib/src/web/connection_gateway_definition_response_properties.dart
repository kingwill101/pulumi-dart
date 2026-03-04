// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_gateway_reference_response.dart';

class ConnectionGatewayDefinitionResponseProperties {
  /// The URI of the backend
  final pulumi.Input<String>? backendUri;

  /// The gateway installation reference
  final pulumi.Input<ConnectionGatewayReferenceResponse>?
  connectionGatewayInstallation;

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

  /// Creates a new [ConnectionGatewayDefinitionResponseProperties].
  /// [backendUri] The URI of the backend
  /// [connectionGatewayInstallation] The gateway installation reference
  /// [contactInformation] The gateway admin
  /// [description] The gateway description
  /// [displayName] The gateway display name
  /// [machineName] The machine name of the gateway
  /// [status] The gateway status
  ConnectionGatewayDefinitionResponseProperties({
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
      'connectionGatewayInstallation':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGatewayReferenceResponse,
            Map<String, dynamic>
          >(connectionGatewayInstallation, (value) => value.toMap()),
      'contactInformation': ?contactInformation,
      'description': ?description,
      'displayName': ?displayName,
      'machineName': ?machineName,
      'status': ?status,
    };
  }

  factory ConnectionGatewayDefinitionResponseProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionGatewayDefinitionResponseProperties(
      backendUri: (() {
        final guardedValue = map['backendUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionGatewayInstallation: (() {
        final guardedValue = map['connectionGatewayInstallation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionGatewayReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      contactInformation: (() {
        final guardedValue = map['contactInformation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
      machineName: (() {
        final guardedValue = map['machineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
