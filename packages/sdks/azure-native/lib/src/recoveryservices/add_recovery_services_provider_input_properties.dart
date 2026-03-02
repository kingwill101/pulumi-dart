// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_input.dart';

/// The properties of an add provider request.
class AddRecoveryServicesProviderInputProperties {
  /// The identity provider input for DRA authentication.
  final pulumi.Input<IdentityProviderInput> authenticationIdentityInput;
  /// The Bios Id of the machine.
  final pulumi.Input<String>? biosId;
  /// The identity provider input for data plane authentication.
  final pulumi.Input<IdentityProviderInput>? dataPlaneAuthenticationIdentityInput;
  /// The Id of the machine where the provider is getting added.
  final pulumi.Input<String>? machineId;
  /// The name of the machine where the provider is getting added.
  final pulumi.Input<String> machineName;
  /// The identity provider input for resource access.
  final pulumi.Input<IdentityProviderInput> resourceAccessIdentityInput;

  /// Creates a new [AddRecoveryServicesProviderInputProperties].
  /// [authenticationIdentityInput] The identity provider input for DRA authentication.
  /// [biosId] The Bios Id of the machine.
  /// [dataPlaneAuthenticationIdentityInput] The identity provider input for data plane authentication.
  /// [machineId] The Id of the machine where the provider is getting added.
  /// [machineName] The name of the machine where the provider is getting added.
  /// [resourceAccessIdentityInput] The identity provider input for resource access.
  AddRecoveryServicesProviderInputProperties({
    required this.authenticationIdentityInput,
    this.biosId,
    this.dataPlaneAuthenticationIdentityInput,
    this.machineId,
    required this.machineName,
    required this.resourceAccessIdentityInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationIdentityInput': pulumi.Input.mapInputValue<IdentityProviderInput, Map<String, dynamic>>(authenticationIdentityInput, (value) => value.toMap()),
      'biosId': ?biosId,
      'dataPlaneAuthenticationIdentityInput': ?pulumi.Input.mapOptionalInputValue<IdentityProviderInput, Map<String, dynamic>>(dataPlaneAuthenticationIdentityInput, (value) => value.toMap()),
      'machineId': ?machineId,
      'machineName': machineName,
      'resourceAccessIdentityInput': pulumi.Input.mapInputValue<IdentityProviderInput, Map<String, dynamic>>(resourceAccessIdentityInput, (value) => value.toMap()),
    };
  }

  factory AddRecoveryServicesProviderInputProperties.fromMap(Map<String, dynamic> map) {
    return AddRecoveryServicesProviderInputProperties(
      authenticationIdentityInput: (IdentityProviderInput.fromMap((map['authenticationIdentityInput'] as Map).cast<String, dynamic>())).input(),
      biosId: map['biosId'] == null ? null : (map['biosId'] as String).input(),
      dataPlaneAuthenticationIdentityInput: map['dataPlaneAuthenticationIdentityInput'] == null ? null : (IdentityProviderInput.fromMap((map['dataPlaneAuthenticationIdentityInput'] as Map).cast<String, dynamic>())).input(),
      machineId: map['machineId'] == null ? null : (map['machineId'] as String).input(),
      machineName: (map['machineName'] as String).input(),
      resourceAccessIdentityInput: (IdentityProviderInput.fromMap((map['resourceAccessIdentityInput'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

