// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Flavor resources.
class FlavorState {
  /// The description of the flavor. Changing this
  /// updates the description of the flavor. Requires microversion >= 2.55.
  final pulumi.Input<String>? description;
  /// The amount of disk space in GiB to use for the root
  /// (/) partition. Changing this creates a new flavor.
  final pulumi.Input<int>? disk;
  /// The amount of ephemeral in GiB. If unspecified,
  /// the default is 0. Changing this creates a new flavor.
  final pulumi.Input<int>? ephemeral;
  /// Key/Value pairs of metadata for the flavor.
  final pulumi.Input<Map<String, String>>? extraSpecs;
  /// Unique ID (integer or UUID) of flavor to create. Changing
  /// this creates a new flavor.
  final pulumi.Input<String>? flavorId;
  /// Whether the flavor is public. Changing this creates
  /// a new flavor.
  final pulumi.Input<bool>? isPublic;
  /// A unique name for the flavor. Changing this creates a new
  /// flavor.
  final pulumi.Input<String>? name;
  /// The amount of RAM to use, in megabytes. Changing this
  /// creates a new flavor.
  final pulumi.Input<int>? ram;
  /// The region in which to obtain the V2 Compute client.
  /// Flavors are associated with accounts, but a Compute client is needed to
  /// create one. If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new flavor.
  final pulumi.Input<String>? region;
  /// RX/TX bandwith factor. The default is 1. Changing
  /// this creates a new flavor.
  final pulumi.Input<double>? rxTxFactor;
  /// The amount of disk space in megabytes to use. If
  /// unspecified, the default is 0. Changing this creates a new flavor.
  final pulumi.Input<int>? swap;
  /// The number of virtual CPUs to use. Changing this creates
  /// a new flavor.
  final pulumi.Input<int>? vcpus;

  /// Creates a new [FlavorState].
  /// [description] The description of the flavor. Changing this
  /// [disk] The amount of disk space in GiB to use for the root
  /// [ephemeral] The amount of ephemeral in GiB. If unspecified,
  /// [extraSpecs] Key/Value pairs of metadata for the flavor.
  /// [flavorId] Unique ID (integer or UUID) of flavor to create. Changing
  /// [isPublic] Whether the flavor is public. Changing this creates
  /// [name] A unique name for the flavor. Changing this creates a new
  /// [ram] The amount of RAM to use, in megabytes. Changing this
  /// [region] The region in which to obtain the V2 Compute client.
  /// [rxTxFactor] RX/TX bandwith factor. The default is 1. Changing
  /// [swap] The amount of disk space in megabytes to use. If
  /// [vcpus] The number of virtual CPUs to use. Changing this creates
  FlavorState({
    this.description,
    this.disk,
    this.ephemeral,
    this.extraSpecs,
    this.flavorId,
    this.isPublic,
    this.name,
    this.ram,
    this.region,
    this.rxTxFactor,
    this.swap,
    this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disk': ?disk,
      'ephemeral': ?ephemeral,
      'extraSpecs': ?extraSpecs,
      'flavorId': ?flavorId,
      'isPublic': ?isPublic,
      'name': ?name,
      'ram': ?ram,
      'region': ?region,
      'rxTxFactor': ?rxTxFactor,
      'swap': ?swap,
      'vcpus': ?vcpus,
    };
  }

  factory FlavorState.fromMap(Map<String, dynamic> map) {
    return FlavorState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disk: map['disk'] == null ? null : (map['disk'] as int).input(),
      ephemeral: map['ephemeral'] == null ? null : (map['ephemeral'] as int).input(),
      extraSpecs: map['extraSpecs'] == null ? null : ((map['extraSpecs'] as Map).cast<String, String>()).input(),
      flavorId: map['flavorId'] == null ? null : (map['flavorId'] as String).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ram: map['ram'] == null ? null : (map['ram'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rxTxFactor: map['rxTxFactor'] == null ? null : (map['rxTxFactor'] as double).input(),
      swap: map['swap'] == null ? null : (map['swap'] as int).input(),
      vcpus: map['vcpus'] == null ? null : (map['vcpus'] as int).input(),
    );
  }
}

