// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAzure {
  /// (Output)
  /// The name of the Azure Active Directory Application.
  final pulumi.Input<String>? application;
  /// (Output)
  /// The client id of the Azure Active Directory Application.
  final pulumi.Input<String>? clientId;
  /// The id of customer's directory that host the data.
  final pulumi.Input<String> customerTenantId;
  /// The Azure Application (client) ID where the federated credentials will be hosted.
  final pulumi.Input<String>? federatedApplicationClientId;
  /// (Output)
  /// A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's Azure Active Directory Application.
  final pulumi.Input<String>? identity;
  /// (Output)
  /// The object id of the Azure Active Directory Application.
  final pulumi.Input<String>? objectId;
  /// (Output)
  /// The URL user will be redirected to after granting consent during connection setup.
  final pulumi.Input<String>? redirectUri;

  /// Creates a new [ConnectionAzure].
  /// [application] (Output)
  /// [clientId] (Output)
  /// [customerTenantId] The id of customer's directory that host the data.
  /// [federatedApplicationClientId] The Azure Application (client) ID where the federated credentials will be hosted.
  /// [identity] (Output)
  /// [objectId] (Output)
  /// [redirectUri] (Output)
  const ConnectionAzure({
    this.application,
    this.clientId,
    required this.customerTenantId,
    this.federatedApplicationClientId,
    this.identity,
    this.objectId,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'clientId': ?clientId,
      'customerTenantId': customerTenantId,
      'federatedApplicationClientId': ?federatedApplicationClientId,
      'identity': ?identity,
      'objectId': ?objectId,
      'redirectUri': ?redirectUri,
    };
  }

  factory ConnectionAzure.fromMap(Map<String, dynamic> map) {
    return ConnectionAzure(
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerTenantId: pulumi.Input.fromValue(map['customerTenantId'] as String),
      federatedApplicationClientId: (() { final guardedValue = map['federatedApplicationClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUri: (() { final guardedValue = map['redirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
