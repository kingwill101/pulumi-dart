// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_flavor_get_flavor_args_doc}
/// Arguments for getFlavor.
/// {@endtemplate}
/// {@macro pulumi_compute_get_flavor_get_flavor_args_doc}
class GetFlavorArgs {
  /// The description of the flavor.
  final pulumi.Input<String>? description;

  /// The exact amount of disk (in gigabytes).
  final pulumi.Input<int>? disk;

  /// The ID of the flavor. Conflicts with the `name`,
  /// `min_ram` and `min_disk`
  final pulumi.Input<String>? flavorId;

  /// The flavor visibility.
  final pulumi.Input<bool>? isPublic;

  /// The minimum amount of disk (in gigabytes). Conflicts
  /// with the `flavor_id`.
  final pulumi.Input<int>? minDisk;

  /// The minimum amount of RAM (in megabytes). Conflicts
  /// with the `flavor_id`.
  final pulumi.Input<int>? minRam;

  /// The name of the flavor. Conflicts with the `flavor_id`.
  final pulumi.Input<String>? name;

  /// The exact amount of RAM (in megabytes).
  final pulumi.Input<int>? ram;

  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// The `rx_tx_factor` of the flavor.
  final pulumi.Input<double>? rxTxFactor;

  /// The amount of swap (in gigabytes).
  final pulumi.Input<int>? swap;

  /// The amount of VCPUs.
  final pulumi.Input<int>? vcpus;

  /// Creates a new [GetFlavorArgs].
  /// [description] The description of the flavor.
  /// [disk] The exact amount of disk (in gigabytes).
  /// [flavorId] The ID of the flavor. Conflicts with the `name`,
  /// [isPublic] The flavor visibility.
  /// [minDisk] The minimum amount of disk (in gigabytes). Conflicts
  /// [minRam] The minimum amount of RAM (in megabytes). Conflicts
  /// [name] The name of the flavor. Conflicts with the `flavor_id`.
  /// [ram] The exact amount of RAM (in megabytes).
  /// [region] The region in which to obtain the V2 Compute client.
  /// [rxTxFactor] The `rx_tx_factor` of the flavor.
  /// [swap] The amount of swap (in gigabytes).
  /// [vcpus] The amount of VCPUs.
  GetFlavorArgs({
    this.description,
    this.disk,
    this.flavorId,
    this.isPublic,
    this.minDisk,
    this.minRam,
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
      'flavorId': ?flavorId,
      'isPublic': ?isPublic,
      'minDisk': ?minDisk,
      'minRam': ?minRam,
      'name': ?name,
      'ram': ?ram,
      'region': ?region,
      'rxTxFactor': ?rxTxFactor,
      'swap': ?swap,
      'vcpus': ?vcpus,
    };
  }

  factory GetFlavorArgs.fromMap(Map<String, dynamic> map) {
    return GetFlavorArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disk: (() {
        final guardedValue = map['disk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
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
      minDisk: (() {
        final guardedValue = map['minDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minRam: (() {
        final guardedValue = map['minRam'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ram: (() {
        final guardedValue = map['ram'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
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
      vcpus: (() {
        final guardedValue = map['vcpus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
