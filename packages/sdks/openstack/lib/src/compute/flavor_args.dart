// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_flavor_flavor_args_doc}
/// The set of arguments for Flavor.
/// {@endtemplate}
/// {@macro pulumi_compute_flavor_flavor_args_doc}
class FlavorArgs {
  /// The description of the flavor. Changing this
  /// updates the description of the flavor. Requires microversion &gt;= 2.55.
  final pulumi.Input<String>? description;

  /// The amount of disk space in GiB to use for the root
  /// (/) partition. Changing this creates a new flavor.
  final pulumi.Input<int> disk;

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
  final pulumi.Input<int> ram;

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
  final pulumi.Input<int> vcpus;

  /// Creates a new [FlavorArgs].
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
  FlavorArgs({
    this.description,
    required this.disk,
    this.ephemeral,
    this.extraSpecs,
    this.flavorId,
    this.isPublic,
    this.name,
    required this.ram,
    this.region,
    this.rxTxFactor,
    this.swap,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disk': disk,
      'ephemeral': ?ephemeral,
      'extraSpecs': ?extraSpecs,
      'flavorId': ?flavorId,
      'isPublic': ?isPublic,
      'name': ?name,
      'ram': ram,
      'region': ?region,
      'rxTxFactor': ?rxTxFactor,
      'swap': ?swap,
      'vcpus': vcpus,
    };
  }

  factory FlavorArgs.fromMap(Map<String, dynamic> map) {
    return FlavorArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disk: pulumi.Input.fromValue(map['disk'] as int),
      ephemeral: (() {
        final guardedValue = map['ephemeral'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      extraSpecs: (() {
        final guardedValue = map['extraSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      flavorId: (() {
        final guardedValue = map['flavorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isPublic: (() {
        final guardedValue = map['isPublic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ram: pulumi.Input.fromValue(map['ram'] as int),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rxTxFactor: (() {
        final guardedValue = map['rxTxFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      swap: (() {
        final guardedValue = map['swap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vcpus: pulumi.Input.fromValue(map['vcpus'] as int),
    );
  }
}
