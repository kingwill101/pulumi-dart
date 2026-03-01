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
  final pulumi.Input<String>? distro;
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// Contains infrastructure information about the Appliance
  final pulumi.Input<AppliancePropertiesInfrastructureConfig>? infrastructureConfig;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Certificates pair used to download MSI certificate from HIS. Can only be set once.
  final pulumi.Input<String>? publicKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Appliances name.
  final pulumi.Input<String>? resourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Version of the Appliance
  final pulumi.Input<String>? version;

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
    pulumi.Output<String>? distro,
    pulumi.Output<Identity>? identity,
    pulumi.Output<AppliancePropertiesInfrastructureConfig>? infrastructureConfig,
    pulumi.Output<String>? location,
    pulumi.Output<String>? publicKey,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      distro = pulumi.Input.asOptionalInput<String>(distro),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      infrastructureConfig = pulumi.Input.asOptionalInput<AppliancePropertiesInfrastructureConfig>(infrastructureConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      distro: map['distro'] == null ? null : pulumi.Output.create<String>(map['distro'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      infrastructureConfig: map['infrastructureConfig'] == null ? null : pulumi.Output.create<AppliancePropertiesInfrastructureConfig>(AppliancePropertiesInfrastructureConfig.fromMap((map['infrastructureConfig'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

