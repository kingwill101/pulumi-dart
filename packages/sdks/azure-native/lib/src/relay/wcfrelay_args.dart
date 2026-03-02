// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relaytype.dart';

/// {@template pulumi_relay_wcfrelay_args_doc}
/// The set of arguments for WCFRelay.
/// {@endtemplate}
/// {@macro pulumi_relay_wcfrelay_args_doc}
class WCFRelayArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The relay name.
  final pulumi.Input<String>? relayName;
  /// WCF relay type.
  final pulumi.Input<Relaytype>? relayType;
  /// Returns true if client authorization is needed for this relay; otherwise, false.
  final pulumi.Input<bool>? requiresClientAuthorization;
  /// Returns true if transport security is needed for this relay; otherwise, false.
  final pulumi.Input<bool>? requiresTransportSecurity;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The usermetadata is a placeholder to store user-defined string data for the WCF Relay endpoint. For example, it can be used to store descriptive data, such as list of teams and their contact information. Also, user-defined configuration settings can be stored.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [WCFRelayArgs].
  /// [namespaceName] The namespace name
  /// [relayName] The relay name.
  /// [relayType] WCF relay type.
  /// [requiresClientAuthorization] Returns true if client authorization is needed for this relay; otherwise, false.
  /// [requiresTransportSecurity] Returns true if transport security is needed for this relay; otherwise, false.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userMetadata] The usermetadata is a placeholder to store user-defined string data for the WCF Relay endpoint. For example, it can be used to store descriptive data, such as list of teams and their contact information. Also, user-defined configuration settings can be stored.
  WCFRelayArgs({
    required this.namespaceName,
    this.relayName,
    this.relayType,
    this.requiresClientAuthorization,
    this.requiresTransportSecurity,
    required this.resourceGroupName,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'relayName': ?relayName,
      'relayType': ?pulumi.Input.mapOptionalInputValue<Relaytype, String>(relayType, (value) => value.value),
      'requiresClientAuthorization': ?requiresClientAuthorization,
      'requiresTransportSecurity': ?requiresTransportSecurity,
      'resourceGroupName': resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory WCFRelayArgs.fromMap(Map<String, dynamic> map) {
    return WCFRelayArgs(
      namespaceName: (map['namespaceName'] as String).input(),
      relayName: map['relayName'] == null ? null : (map['relayName']! as String).input(),
      relayType: map['relayType'] == null ? null : (Relaytype.fromValue(map['relayType']! as String)).input(),
      requiresClientAuthorization: map['requiresClientAuthorization'] == null ? null : (map['requiresClientAuthorization']! as bool).input(),
      requiresTransportSecurity: map['requiresTransportSecurity'] == null ? null : (map['requiresTransportSecurity']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      userMetadata: map['userMetadata'] == null ? null : (map['userMetadata']! as String).input(),
    );
  }
}

