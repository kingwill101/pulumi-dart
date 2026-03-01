// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_credential_set_authentication_credentials.dart';
import 'registry_credential_set_identity.dart';

/// {@template pulumi_containerservice_registry_credential_set_registry_credential_set_args_doc}
/// The set of arguments for RegistryCredentialSet.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_credential_set_registry_credential_set_args_doc}
class RegistryCredentialSetArgs {
  /// A `authentication_credentials` block as defined below.
  final pulumi.Input<RegistryCredentialSetAuthenticationCredentials> authenticationCredentials;
  /// The ID of the Container Registry. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String> containerRegistryId;
  /// An `identity` block as defined below.
  final pulumi.Input<RegistryCredentialSetIdentity> identity;
  /// The login server for the Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String> loginServer;
  /// The name which should be used for this Container Registry Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [RegistryCredentialSetArgs].
  /// [authenticationCredentials] A `authentication_credentials` block as defined below.
  /// [containerRegistryId] The ID of the Container Registry. Changing this forces a new Container Registry Credential Set to be created.
  /// [identity] An `identity` block as defined below.
  /// [loginServer] The login server for the Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  /// [name] The name which should be used for this Container Registry Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  RegistryCredentialSetArgs({
    required pulumi.Output<RegistryCredentialSetAuthenticationCredentials> authenticationCredentials,
    required pulumi.Output<String> containerRegistryId,
    required pulumi.Output<RegistryCredentialSetIdentity> identity,
    required pulumi.Output<String> loginServer,
    pulumi.Output<String>? name,
  }) :
      authenticationCredentials = pulumi.Input.asInput<RegistryCredentialSetAuthenticationCredentials>(authenticationCredentials),
      containerRegistryId = pulumi.Input.asInput<String>(containerRegistryId),
      identity = pulumi.Input.asInput<RegistryCredentialSetIdentity>(identity),
      loginServer = pulumi.Input.asInput<String>(loginServer),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      authenticationCredentials: pulumi.Output.create<RegistryCredentialSetAuthenticationCredentials>(RegistryCredentialSetAuthenticationCredentials.fromMap((map['authenticationCredentials'] as Map).cast<String, dynamic>())),
      containerRegistryId: pulumi.Output.create<String>(map['containerRegistryId'] as String),
      identity: pulumi.Output.create<RegistryCredentialSetIdentity>(RegistryCredentialSetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      loginServer: pulumi.Output.create<String>(map['loginServer'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

