// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletsDroplet {
  /// Whether backups are enabled.
  final pulumi.Input<bool> backups;
  /// the creation date for the Droplet
  final pulumi.Input<String> createdAt;
  /// The size of the Droplet's disk in GB.
  final pulumi.Input<int> disk;
  /// the GPU partition mode the Droplet was created with
  final pulumi.Input<String> gpuPartitionMode;
  /// The ID of the Droplet.
  final pulumi.Input<int> id;
  /// The Droplet image ID or slug.
  final pulumi.Input<String> image;
  /// The Droplet's public IPv4 address
  final pulumi.Input<String> ipv4Address;
  /// The Droplet's private IPv4 address
  final pulumi.Input<String> ipv4AddressPrivate;
  /// Whether IPv6 is enabled.
  final pulumi.Input<bool> ipv6;
  /// The Droplet's public IPv6 address
  final pulumi.Input<String> ipv6Address;
  /// The Droplet's private IPv6 address
  final pulumi.Input<String> ipv6AddressPrivate;
  /// Whether the Droplet is locked.
  final pulumi.Input<bool> locked;
  /// The amount of the Droplet's memory in MB.
  final pulumi.Input<int> memory;
  /// Whether monitoring agent is installed.
  final pulumi.Input<bool> monitoring;
  /// name of the Droplet
  final pulumi.Input<String> name;
  /// Droplet hourly price.
  final pulumi.Input<double> priceHourly;
  /// Droplet monthly price.
  final pulumi.Input<double> priceMonthly;
  /// Whether private networks are enabled.
  final pulumi.Input<bool> privateNetworking;
  /// The region the Droplet is running in.
  final pulumi.Input<String> region;
  /// The unique slug that identifies the type of Droplet.
  final pulumi.Input<String> size;
  /// The status of the Droplet.
  final pulumi.Input<String> status;
  /// A list of the tags associated to the Droplet.
  final pulumi.Input<List<String>> tags;
  /// The uniform resource name of the Droplet
  final pulumi.Input<String> urn;
  /// The number of the Droplet's virtual CPUs.
  final pulumi.Input<int> vcpus;
  /// List of the IDs of each volumes attached to the Droplet.
  final pulumi.Input<List<String>> volumeIds;
  /// The ID of the VPC where the Droplet is located.
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [GetDropletsDroplet].
  /// [backups] Whether backups are enabled.
  /// [createdAt] the creation date for the Droplet
  /// [disk] The size of the Droplet's disk in GB.
  /// [gpuPartitionMode] the GPU partition mode the Droplet was created with
  /// [id] The ID of the Droplet.
  /// [image] The Droplet image ID or slug.
  /// [ipv4Address] The Droplet's public IPv4 address
  /// [ipv4AddressPrivate] The Droplet's private IPv4 address
  /// [ipv6] Whether IPv6 is enabled.
  /// [ipv6Address] The Droplet's public IPv6 address
  /// [ipv6AddressPrivate] The Droplet's private IPv6 address
  /// [locked] Whether the Droplet is locked.
  /// [memory] The amount of the Droplet's memory in MB.
  /// [monitoring] Whether monitoring agent is installed.
  /// [name] name of the Droplet
  /// [priceHourly] Droplet hourly price.
  /// [priceMonthly] Droplet monthly price.
  /// [privateNetworking] Whether private networks are enabled.
  /// [region] The region the Droplet is running in.
  /// [size] The unique slug that identifies the type of Droplet.
  /// [status] The status of the Droplet.
  /// [tags] A list of the tags associated to the Droplet.
  /// [urn] The uniform resource name of the Droplet
  /// [vcpus] The number of the Droplet's virtual CPUs.
  /// [volumeIds] List of the IDs of each volumes attached to the Droplet.
  /// [vpcUuid] The ID of the VPC where the Droplet is located.
  const GetDropletsDroplet({
    required this.backups,
    required this.createdAt,
    required this.disk,
    required this.gpuPartitionMode,
    required this.id,
    required this.image,
    required this.ipv4Address,
    required this.ipv4AddressPrivate,
    required this.ipv6,
    required this.ipv6Address,
    required this.ipv6AddressPrivate,
    required this.locked,
    required this.memory,
    required this.monitoring,
    required this.name,
    required this.priceHourly,
    required this.priceMonthly,
    required this.privateNetworking,
    required this.region,
    required this.size,
    required this.status,
    required this.tags,
    required this.urn,
    required this.vcpus,
    required this.volumeIds,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backups': backups,
      'createdAt': createdAt,
      'disk': disk,
      'gpuPartitionMode': gpuPartitionMode,
      'id': id,
      'image': image,
      'ipv4Address': ipv4Address,
      'ipv4AddressPrivate': ipv4AddressPrivate,
      'ipv6': ipv6,
      'ipv6Address': ipv6Address,
      'ipv6AddressPrivate': ipv6AddressPrivate,
      'locked': locked,
      'memory': memory,
      'monitoring': monitoring,
      'name': name,
      'priceHourly': priceHourly,
      'priceMonthly': priceMonthly,
      'privateNetworking': privateNetworking,
      'region': region,
      'size': size,
      'status': status,
      'tags': tags,
      'urn': urn,
      'vcpus': vcpus,
      'volumeIds': volumeIds,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetDropletsDroplet.fromMap(Map<String, dynamic> map) {
    return GetDropletsDroplet(
      backups: pulumi.Input.fromValue(map['backups'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      disk: pulumi.Input.fromValue(map['disk'] as int),
      gpuPartitionMode: pulumi.Input.fromValue(map['gpuPartitionMode'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      image: pulumi.Input.fromValue(map['image'] as String),
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
      ipv4AddressPrivate: pulumi.Input.fromValue(map['ipv4AddressPrivate'] as String),
      ipv6: pulumi.Input.fromValue(map['ipv6'] as bool),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      ipv6AddressPrivate: pulumi.Input.fromValue(map['ipv6AddressPrivate'] as String),
      locked: pulumi.Input.fromValue(map['locked'] as bool),
      memory: pulumi.Input.fromValue(map['memory'] as int),
      monitoring: pulumi.Input.fromValue(map['monitoring'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      priceHourly: pulumi.Input.fromValue(map['priceHourly'] as double),
      priceMonthly: pulumi.Input.fromValue(map['priceMonthly'] as double),
      privateNetworking: pulumi.Input.fromValue(map['privateNetworking'] as bool),
      region: pulumi.Input.fromValue(map['region'] as String),
      size: pulumi.Input.fromValue(map['size'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      urn: pulumi.Input.fromValue(map['urn'] as String),
      vcpus: pulumi.Input.fromValue(map['vcpus'] as int),
      volumeIds: pulumi.Input.fromValue((map['volumeIds'] as List).cast<String>()),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}
