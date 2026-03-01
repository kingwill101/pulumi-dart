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
    pulumi.Output<PropertiesEncryption>? encryption,
    pulumi.Output<String>? enterprisePolicyName,
    pulumi.Output<String>? healthStatus,
    pulumi.Output<EnterprisePolicyIdentity>? identity,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? location,
    pulumi.Output<PropertiesLockbox>? lockbox,
    pulumi.Output<PropertiesNetworkInjection>? networkInjection,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      encryption = pulumi.Input.asOptionalInput<PropertiesEncryption>(encryption),
      enterprisePolicyName = pulumi.Input.asOptionalInput<String>(enterprisePolicyName),
      healthStatus = pulumi.Input.asOptionalInput<String>(healthStatus),
      identity = pulumi.Input.asOptionalInput<EnterprisePolicyIdentity>(identity),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockbox = pulumi.Input.asOptionalInput<PropertiesLockbox>(lockbox),
      networkInjection = pulumi.Input.asOptionalInput<PropertiesNetworkInjection>(networkInjection),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<PropertiesEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'enterprisePolicyName': ?enterprisePolicyName,
      'healthStatus': ?healthStatus,
      'identity': ?pulumi.Input.mapOptionalInputValue<EnterprisePolicyIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'lockbox': ?pulumi.Input.mapOptionalInputValue<PropertiesLockbox, Map<String, dynamic>>(lockbox, (value) => value.toMap()),
      'networkInjection': ?pulumi.Input.mapOptionalInputValue<PropertiesNetworkInjection, Map<String, dynamic>>(networkInjection, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EnterprisePolicyArgs.fromMap(Map<String, dynamic> map) {
    return EnterprisePolicyArgs(
      encryption: map['encryption'] == null ? null : pulumi.Output.create<PropertiesEncryption>(PropertiesEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      enterprisePolicyName: map['enterprisePolicyName'] == null ? null : pulumi.Output.create<String>(map['enterprisePolicyName'] as String),
      healthStatus: map['healthStatus'] == null ? null : pulumi.Output.create<String>(map['healthStatus'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<EnterprisePolicyIdentity>(EnterprisePolicyIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      lockbox: map['lockbox'] == null ? null : pulumi.Output.create<PropertiesLockbox>(PropertiesLockbox.fromMap((map['lockbox'] as Map).cast<String, dynamic>())),
      networkInjection: map['networkInjection'] == null ? null : pulumi.Output.create<PropertiesNetworkInjection>(PropertiesNetworkInjection.fromMap((map['networkInjection'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

