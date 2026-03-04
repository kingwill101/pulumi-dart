// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_policy_identity.dart';
import 'properties_encryption.dart';
import 'properties_lockbox.dart';
import 'properties_network_injection.dart';

/// {@template pulumi_powerplatform_enterprise_policy_args_doc}
/// The set of arguments for EnterprisePolicy.
/// {@endtemplate}
/// {@macro pulumi_powerplatform_enterprise_policy_args_doc}
class EnterprisePolicyArgs {
  /// The encryption settings for a configuration store.
  final pulumi.Input<PropertiesEncryption>? encryption;

  /// Name of the EnterprisePolicy.
  final pulumi.Input<String>? enterprisePolicyName;

  /// The health status of the resource.
  final pulumi.Input<String>? healthStatus;

  /// The identity of the EnterprisePolicy.
  final pulumi.Input<EnterprisePolicyIdentity>? identity;

  /// The kind (type) of Enterprise Policy.
  final pulumi.Input<String> kind;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Settings concerning lockbox.
  final pulumi.Input<PropertiesLockbox>? lockbox;

  /// Settings concerning network injection.
  final pulumi.Input<PropertiesNetworkInjection>? networkInjection;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnterprisePolicyArgs].
  /// [encryption] The encryption settings for a configuration store.
  /// [enterprisePolicyName] Name of the EnterprisePolicy.
  /// [healthStatus] The health status of the resource.
  /// [identity] The identity of the EnterprisePolicy.
  /// [kind] The kind (type) of Enterprise Policy.
  /// [location] The geo-location where the resource lives
  /// [lockbox] Settings concerning lockbox.
  /// [networkInjection] Settings concerning network injection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EnterprisePolicyArgs({
    this.encryption,
    this.enterprisePolicyName,
    this.healthStatus,
    this.identity,
    required this.kind,
    this.location,
    this.lockbox,
    this.networkInjection,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            PropertiesEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'enterprisePolicyName': ?enterprisePolicyName,
      'healthStatus': ?healthStatus,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            EnterprisePolicyIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'lockbox':
          ?pulumi.Input.mapOptionalInputValue<
            PropertiesLockbox,
            Map<String, dynamic>
          >(lockbox, (value) => value.toMap()),
      'networkInjection':
          ?pulumi.Input.mapOptionalInputValue<
            PropertiesNetworkInjection,
            Map<String, dynamic>
          >(networkInjection, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EnterprisePolicyArgs.fromMap(Map<String, dynamic> map) {
    return EnterprisePolicyArgs(
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PropertiesEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enterprisePolicyName: (() {
        final guardedValue = map['enterprisePolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthStatus: (() {
        final guardedValue = map['healthStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterprisePolicyIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lockbox: (() {
        final guardedValue = map['lockbox'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PropertiesLockbox.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkInjection: (() {
        final guardedValue = map['networkInjection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PropertiesNetworkInjection.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
