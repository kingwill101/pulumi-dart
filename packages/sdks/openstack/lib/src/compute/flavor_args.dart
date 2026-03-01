// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_flavor_flavor_args_doc}
/// The set of arguments for Flavor.
/// {@endtemplate}
/// {@macro pulumi_compute_flavor_flavor_args_doc}
class FlavorArgs {
  /// The description of the flavor. Changing this
  /// updates the description of the flavor. Requires microversion >= 2.55.
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
    pulumi.Output<String>? description,
    required pulumi.Output<int> disk,
    pulumi.Output<int>? ephemeral,
    pulumi.Output<Map<String, String>>? extraSpecs,
    pulumi.Output<String>? flavorId,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<String>? name,
    required pulumi.Output<int> ram,
    pulumi.Output<String>? region,
    pulumi.Output<double>? rxTxFactor,
    pulumi.Output<int>? swap,
    required pulumi.Output<int> vcpus,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disk = pulumi.Input.asInput<int>(disk),
      ephemeral = pulumi.Input.asOptionalInput<int>(ephemeral),
      extraSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(extraSpecs),
      flavorId = pulumi.Input.asOptionalInput<String>(flavorId),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      name = pulumi.Input.asOptionalInput<String>(name),
      ram = pulumi.Input.asInput<int>(ram),
      region = pulumi.Input.asOptionalInput<String>(region),
      rxTxFactor = pulumi.Input.asOptionalInput<double>(rxTxFactor),
      swap = pulumi.Input.asOptionalInput<int>(swap),
      vcpus = pulumi.Input.asInput<int>(vcpus);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disk: pulumi.Output.create<int>(map['disk'] as int),
      ephemeral: map['ephemeral'] == null ? null : pulumi.Output.create<int>(map['ephemeral'] as int),
      extraSpecs: map['extraSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['extraSpecs'] as Map).cast<String, String>()),
      flavorId: map['flavorId'] == null ? null : pulumi.Output.create<String>(map['flavorId'] as String),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ram: pulumi.Output.create<int>(map['ram'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rxTxFactor: map['rxTxFactor'] == null ? null : pulumi.Output.create<double>(map['rxTxFactor'] as double),
      swap: map['swap'] == null ? null : pulumi.Output.create<int>(map['swap'] as int),
      vcpus: pulumi.Output.create<int>(map['vcpus'] as int),
    );
  }
}

