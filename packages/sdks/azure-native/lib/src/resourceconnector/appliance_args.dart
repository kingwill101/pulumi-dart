// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_properties_infrastructure_config.dart';
import 'identity.dart';

/// {@template pulumi_resourceconnector_appliance_args_doc}
/// The set of arguments for Appliance.
/// {@endtemplate}
/// {@macro pulumi_resourceconnector_appliance_args_doc}
class ApplianceArgs {
  /// Represents a supported Fabric/Infra. (AKSEdge etc...).
  final pulumi.Input<dynamic>? distro;
  /// Identity for the resource.
  final pulumi.Input<Identity?>? identity;
  /// Contains infrastructure information about the Appliance
  final pulumi.Input<AppliancePropertiesInfrastructureConfig?>? infrastructureConfig;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Certificates pair used to download MSI certificate from HIS. Can only be set once.
  final pulumi.Input<String?>? publicKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Appliances name.
  final pulumi.Input<String?>? resourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Version of the Appliance
  final pulumi.Input<String?>? version;

  /// Creates a new [ApplianceArgs].
  /// [distro] Represents a supported Fabric/Infra. (AKSEdge etc...).
  /// [identity] Identity for the resource.
  /// [infrastructureConfig] Contains infrastructure information about the Appliance
  /// [location] The geo-location where the resource lives
  /// [publicKey] Certificates pair used to download MSI certificate from HIS. Can only be set once.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Appliances name.
  /// [tags] Resource tags.
  /// [version] Version of the Appliance
  ApplianceArgs({
    pulumi.Input<dynamic>? distro,
    this.identity,
    this.infrastructureConfig,
    this.location,
    this.publicKey,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
    this.version,
  }) : distro = distro ?? pulumi.Input.fromValue('AKSEdge');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distro': ?distro,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureConfig': ?pulumi.Input.mapOptionalInputValue<AppliancePropertiesInfrastructureConfig, Map<String, dynamic>>(infrastructureConfig, (value) => value.toMap()),
      'location': ?location,
      'publicKey': ?publicKey,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory ApplianceArgs.fromMap(Map<String, dynamic> map) {
    return ApplianceArgs(
      distro: (() { final guardedValue = map['distro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureConfig: (() { final guardedValue = map['infrastructureConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppliancePropertiesInfrastructureConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
