// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExpressRouteLink Mac Security Configuration.
class ExpressRouteLinkMacSecConfig {
  /// Keyvault Secret Identifier URL containing Mac security CAK key.
  final pulumi.Input<String>? cakSecretIdentifier;
  /// Mac security cipher.
  final pulumi.Input<String>? cipher;
  /// Keyvault Secret Identifier URL containing Mac security CKN key.
  final pulumi.Input<String>? cknSecretIdentifier;
  /// Sci mode enabled/disabled.
  final pulumi.Input<String>? sciState;

  /// Creates a new [ExpressRouteLinkMacSecConfig].
  /// [cakSecretIdentifier] Keyvault Secret Identifier URL containing Mac security CAK key.
  /// [cipher] Mac security cipher.
  /// [cknSecretIdentifier] Keyvault Secret Identifier URL containing Mac security CKN key.
  /// [sciState] Sci mode enabled/disabled.
  const ExpressRouteLinkMacSecConfig({
    this.cakSecretIdentifier,
    this.cipher,
    this.cknSecretIdentifier,
    this.sciState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cakSecretIdentifier': ?cakSecretIdentifier,
      'cipher': ?cipher,
      'cknSecretIdentifier': ?cknSecretIdentifier,
      'sciState': ?sciState,
    };
  }

  factory ExpressRouteLinkMacSecConfig.fromMap(Map<String, dynamic> map) {
    return ExpressRouteLinkMacSecConfig(
      cakSecretIdentifier: (() { final guardedValue = map['cakSecretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cipher: (() { final guardedValue = map['cipher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cknSecretIdentifier: (() { final guardedValue = map['cknSecretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sciState: (() { final guardedValue = map['sciState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
