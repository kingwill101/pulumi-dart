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
  final pulumi.Input<IdentityProviderInput>?
  dataPlaneAuthenticationIdentityInput;

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
      'authenticationIdentityInput':
          pulumi.Input.mapInputValue<
            IdentityProviderInput,
            Map<String, dynamic>
          >(authenticationIdentityInput, (value) => value.toMap()),
      'biosId': ?biosId,
      'dataPlaneAuthenticationIdentityInput':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityProviderInput,
            Map<String, dynamic>
          >(dataPlaneAuthenticationIdentityInput, (value) => value.toMap()),
      'machineId': ?machineId,
      'machineName': machineName,
      'resourceAccessIdentityInput':
          pulumi.Input.mapInputValue<
            IdentityProviderInput,
            Map<String, dynamic>
          >(resourceAccessIdentityInput, (value) => value.toMap()),
    };
  }

  factory AddRecoveryServicesProviderInputProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return AddRecoveryServicesProviderInputProperties(
      authenticationIdentityInput: pulumi.Input.fromValue(
        IdentityProviderInput.fromMap(
          (map['authenticationIdentityInput']! as Map).cast<String, dynamic>(),
        ),
      ),
      biosId: (() {
        final guardedValue = map['biosId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataPlaneAuthenticationIdentityInput: (() {
        final guardedValue = map['dataPlaneAuthenticationIdentityInput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityProviderInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      machineId: (() {
        final guardedValue = map['machineId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      resourceAccessIdentityInput: pulumi.Input.fromValue(
        IdentityProviderInput.fromMap(
          (map['resourceAccessIdentityInput']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
