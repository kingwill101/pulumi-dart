// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDroplet.
class GetDropletResult {
  /// Whether backups are enabled.
  final bool? backups;
  final String? createdAt;
  /// The size of the Droplets disk in GB.
  final int? disk;
  final bool? gpu;
  /// The GPU partition mode the Droplet was created with. Note that read-back of this value from the DigitalOcean API is not yet available, so it is currently empty.
  final String? gpuPartitionMode;
  /// The ID of the Droplet.
  final int? id;
  /// The Droplet image ID or slug.
  final String? image;
  /// The Droplets public IPv4 address
  final String? ipv4Address;
  /// The Droplets private IPv4 address
  final String? ipv4AddressPrivate;
  /// Whether IPv6 is enabled.
  final bool? ipv6;
  /// The Droplets public IPv6 address
  final String? ipv6Address;
  /// The Droplets private IPv6 address
  final String? ipv6AddressPrivate;
  /// Whether the Droplet is locked.
  final bool? locked;
  /// The amount of the Droplets memory in MB.
  final int? memory;
  /// Whether monitoring agent is installed.
  final bool? monitoring;
  final String? name;
  /// Droplet hourly price.
  final double? priceHourly;
  /// Droplet monthly price.
  final double? priceMonthly;
  /// Whether private networks are enabled.
  final bool? privateNetworking;
  /// The region the Droplet is running in.
  final String? region;
  /// The unique slug that identifies the type of Droplet.
  final String? size;
  /// The status of the Droplet.
  final String? status;
  final String? tag;
  /// A list of the tags associated to the Droplet.
  final List<String>? tags;
  /// The uniform resource name of the Droplet
  final String? urn;
  /// The number of the Droplets virtual CPUs.
  final int? vcpus;
  /// List of the IDs of each volumes attached to the Droplet.
  final List<String>? volumeIds;
  /// The ID of the VPC where the Droplet is located.
  final String? vpcUuid;

  /// Creates a new [GetDropletResult].
  /// [backups] Whether backups are enabled.
  /// [createdAt] Optional.
  /// [disk] The size of the Droplets disk in GB.
  /// [gpu] Optional.
  /// [gpuPartitionMode] The GPU partition mode the Droplet was created with. Note that read-back of this value from the DigitalOcean API is not yet available, so it is currently empty.
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
  /// [name] Optional.
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
  const GetDropletResult({
    this.backups,
    this.createdAt,
    this.disk,
    this.gpu,
    this.gpuPartitionMode,
    this.id,
    this.image,
    this.ipv4Address,
    this.ipv4AddressPrivate,
    this.ipv6,
    this.ipv6Address,
    this.ipv6AddressPrivate,
    this.locked,
    this.memory,
    this.monitoring,
    this.name,
    this.priceHourly,
    this.priceMonthly,
    this.privateNetworking,
    this.region,
    this.size,
    this.status,
    this.tag,
    this.tags,
    this.urn,
    this.vcpus,
    this.volumeIds,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backups': ?backups,
      'createdAt': ?createdAt,
      'disk': ?disk,
      'gpu': ?gpu,
      'gpuPartitionMode': ?gpuPartitionMode,
      'id': ?id,
      'image': ?image,
      'ipv4Address': ?ipv4Address,
      'ipv4AddressPrivate': ?ipv4AddressPrivate,
      'ipv6': ?ipv6,
      'ipv6Address': ?ipv6Address,
      'ipv6AddressPrivate': ?ipv6AddressPrivate,
      'locked': ?locked,
      'memory': ?memory,
      'monitoring': ?monitoring,
      'name': ?name,
      'priceHourly': ?priceHourly,
      'priceMonthly': ?priceMonthly,
      'privateNetworking': ?privateNetworking,
      'region': ?region,
      'size': ?size,
      'status': ?status,
      'tag': ?tag,
      'tags': ?tags,
      'urn': ?urn,
      'vcpus': ?vcpus,
      'volumeIds': ?volumeIds,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory GetDropletResult.fromMap(Map<String, dynamic> map) {
    return GetDropletResult(
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      gpuPartitionMode: (() { final guardedValue = map['gpuPartitionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4AddressPrivate: (() { final guardedValue = map['ipv4AddressPrivate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6AddressPrivate: (() { final guardedValue = map['ipv6AddressPrivate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priceHourly: (() { final guardedValue = map['priceHourly']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      priceMonthly: (() { final guardedValue = map['priceMonthly']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      privateNetworking: (() { final guardedValue = map['privateNetworking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcpus: (() { final guardedValue = map['vcpus']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      volumeIds: (() { final guardedValue = map['volumeIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
