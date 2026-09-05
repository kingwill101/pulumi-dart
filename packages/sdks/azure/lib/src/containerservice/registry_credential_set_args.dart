// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_credential_set_authentication_credentials.dart';
import 'registry_credential_set_identity.dart';

/// {@template pulumi_containerservice_registry_credential_set_registry_credential_set_args_doc}
/// The set of arguments for RegistryCredentialSet.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_credential_set_registry_credential_set_args_doc}
class RegistryCredentialSetArgs {
  /// A `authenticationCredentials` block as defined below.
  final pulumi.Input<RegistryCredentialSetAuthenticationCredentials> authenticationCredentials;
  /// The ID of the Container Registry. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String> containerRegistryId;
  /// An `identity` block as defined below.
  final pulumi.Input<RegistryCredentialSetIdentity> identity;
  /// The login server for the Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String> loginServer;
  /// The name which should be used for this Container Registry Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [RegistryCredentialSetArgs].
  /// [authenticationCredentials] A `authenticationCredentials` block as defined below.
  /// [containerRegistryId] The ID of the Container Registry. Changing this forces a new Container Registry Credential Set to be created.
  /// [identity] An `identity` block as defined below.
  /// [loginServer] The login server for the Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  /// [name] The name which should be used for this Container Registry Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  const RegistryCredentialSetArgs({
    required this.authenticationCredentials,
    required this.containerRegistryId,
    required this.identity,
    required this.loginServer,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationCredentials': pulumi.Input.mapInputValue<RegistryCredentialSetAuthenticationCredentials, Map<String, dynamic>>(authenticationCredentials, (value) => value.toMap()),
      'containerRegistryId': containerRegistryId,
      'identity': pulumi.Input.mapInputValue<RegistryCredentialSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'loginServer': loginServer,
      'name': ?name,
    };
  }

  factory RegistryCredentialSetArgs.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialSetArgs(
      authenticationCredentials: pulumi.Input.fromValue(RegistryCredentialSetAuthenticationCredentials.fromMap((map['authenticationCredentials']! as Map).cast<String, dynamic>())),
      containerRegistryId: pulumi.Input.fromValue(map['containerRegistryId'] as String),
      identity: pulumi.Input.fromValue(RegistryCredentialSetIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      loginServer: pulumi.Input.fromValue(map['loginServer'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
