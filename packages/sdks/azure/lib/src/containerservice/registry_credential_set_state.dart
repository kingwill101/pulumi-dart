// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_credential_set_authentication_credentials.dart';
import 'registry_credential_set_identity.dart';

/// Input properties used for looking up and filtering RegistryCredentialSet resources.
class RegistryCredentialSetState {
  /// A `authenticationCredentials` block as defined below.
  final pulumi.Input<RegistryCredentialSetAuthenticationCredentials?>? authenticationCredentials;
  /// The ID of the Container Registry. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String?>? containerRegistryId;
  /// An `identity` block as defined below.
  final pulumi.Input<RegistryCredentialSetIdentity?>? identity;
  /// The login server for the Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String?>? loginServer;
  /// The name which should be used for this Container Registry Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [RegistryCredentialSetState].
  /// [authenticationCredentials] A `authenticationCredentials` block as defined below.
  /// [containerRegistryId] The ID of the Container Registry. Changing this forces a new Container Registry Credential Set to be created.
  /// [identity] An `identity` block as defined below.
  /// [loginServer] The login server for the Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  /// [name] The name which should be used for this Container Registry Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  const RegistryCredentialSetState({
    this.authenticationCredentials,
    this.containerRegistryId,
    this.identity,
    this.loginServer,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationCredentials': ?pulumi.Input.mapOptionalInputValue<RegistryCredentialSetAuthenticationCredentials, Map<String, dynamic>>(authenticationCredentials, (value) => value.toMap()),
      'containerRegistryId': ?containerRegistryId,
      'identity': ?pulumi.Input.mapOptionalInputValue<RegistryCredentialSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'loginServer': ?loginServer,
      'name': ?name,
    };
  }

  factory RegistryCredentialSetState.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialSetState(
      authenticationCredentials: (() { final guardedValue = map['authenticationCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryCredentialSetAuthenticationCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerRegistryId: (() { final guardedValue = map['containerRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryCredentialSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginServer: (() { final guardedValue = map['loginServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
