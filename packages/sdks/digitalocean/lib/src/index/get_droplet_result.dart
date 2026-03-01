// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDroplet.
class GetDropletResult {
  /// Whether backups are enabled.
  final bool backups;
  final String createdAt;
  /// The size of the Droplets disk in GB.
  final int disk;
  final bool? gpu;
  /// The ID of the Droplet.
  final int id;
  /// The Droplet image ID or slug.
  final String image;
  /// The Droplets public IPv4 address
  final String ipv4Address;
  /// The Droplets private IPv4 address
  final String ipv4AddressPrivate;
  /// Whether IPv6 is enabled.
  final bool ipv6;
  /// The Droplets public IPv6 address
  final String ipv6Address;
  /// The Droplets private IPv6 address
  final String ipv6AddressPrivate;
  /// Whether the Droplet is locked.
  final bool locked;
  /// The amount of the Droplets memory in MB.
  final int memory;
  /// Whether monitoring agent is installed.
  final bool monitoring;
  final String name;
  /// Droplet hourly price.
  final double priceHourly;
  /// Droplet monthly price.
  final double priceMonthly;
  /// Whether private networks are enabled.
  final bool privateNetworking;
  /// The region the Droplet is running in.
  final String region;
  /// The unique slug that identifies the type of Droplet.
  final String size;
  /// The status of the Droplet.
  final String status;
  final String? tag;
  /// A list of the tags associated to the Droplet.
  final List<String> tags;
  /// The uniform resource name of the Droplet
  final String urn;
  /// The number of the Droplets virtual CPUs.
  final int vcpus;
  /// List of the IDs of each volumes attached to the Droplet.
  final List<String> volumeIds;
  /// The ID of the VPC where the Droplet is located.
  final String vpcUuid;

  /// Creates a new [GetDropletResult].
  /// [backups] Whether backups are enabled.
  /// [createdAt] Required.
  /// [disk] The size of the Droplets disk in GB.
  /// [gpu] Optional.
  /// [id] The ID of the Droplet.
  /// [image] The Droplet image ID or slug.
  /// [ipv4Address] The Droplets public IPv4 address
  /// [ipv4AddressPrivate] The Droplets private IPv4 address
  /// [ipv6] Whether IPv6 is enabled.
  /// [ipv6Address] The Droplets public IPv6 address
  /// [ipv6AddressPrivate] The Droplets private IPv6 address
  /// [locked] Whether the Droplet is locked.
  /// [memory] The amount of the Droplets memory in MB.
  /// [monitoring] Whether monitoring agent is installed.
  /// [name] Required.
  /// [priceHourly] Droplet hourly price.
  /// [priceMonthly] Droplet monthly price.
  /// [privateNetworking] Whether private networks are enabled.
  /// [region] The region the Droplet is running in.
  /// [size] The unique slug that identifies the type of Droplet.
  /// [status] The status of the Droplet.
  /// [tag] Optional.
  /// [tags] A list of the tags associated to the Droplet.
  /// [urn] The uniform resource name of the Droplet
  /// [vcpus] The number of the Droplets virtual CPUs.
  /// [volumeIds] List of the IDs of each volumes attached to the Droplet.
  /// [vpcUuid] The ID of the VPC where the Droplet is located.
  GetDropletResult({
    required this.backups,
    required this.createdAt,
    required this.disk,
    this.gpu,
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
    this.tag,
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
      'gpu': ?gpu,
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
      'tag': ?tag,
      'tags': tags,
      'urn': urn,
      'vcpus': vcpus,
      'volumeIds': volumeIds,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetDropletResult.fromMap(Map<String, dynamic> map) {
    return GetDropletResult(
      backups: map['backups'] as bool,
      createdAt: map['createdAt'] as String,
      disk: map['disk'] as int,
      gpu: map['gpu'] == null ? null : map['gpu'] as bool,
      id: map['id'] as int,
      image: map['image'] as String,
      ipv4Address: map['ipv4Address'] as String,
      ipv4AddressPrivate: map['ipv4AddressPrivate'] as String,
      ipv6: map['ipv6'] as bool,
      ipv6Address: map['ipv6Address'] as String,
      ipv6AddressPrivate: map['ipv6AddressPrivate'] as String,
      locked: map['locked'] as bool,
      memory: map['memory'] as int,
      monitoring: map['monitoring'] as bool,
      name: map['name'] as String,
      priceHourly: map['priceHourly'] as double,
      priceMonthly: map['priceMonthly'] as double,
      privateNetworking: map['privateNetworking'] as bool,
      region: map['region'] as String,
      size: map['size'] as String,
      status: map['status'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      tags: (map['tags'] as List).cast<String>(),
      urn: map['urn'] as String,
      vcpus: map['vcpus'] as int,
      volumeIds: (map['volumeIds'] as List).cast<String>(),
      vpcUuid: map['vpcUuid'] as String,
    );
  }
}

