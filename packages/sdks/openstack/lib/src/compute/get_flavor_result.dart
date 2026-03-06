// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlavor.
class GetFlavorResult {
  final String? description;
  final int? disk;
  /// Key/Value pairs of metadata for the flavor.
  final Map<String, String> extraSpecs;
  final String? flavorId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isPublic;
  final int? minDisk;
  final int? minRam;
  final String? name;
  final int? ram;
  final String region;
  final double? rxTxFactor;
  final int? swap;
  final int? vcpus;

  /// Creates a new [GetFlavorResult].
  /// [description] Optional.
  /// [disk] Optional.
  /// [extraSpecs] Key/Value pairs of metadata for the flavor.
  /// [flavorId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isPublic] Optional.
  /// [minDisk] Optional.
  /// [minRam] Optional.
  /// [name] Optional.
  /// [ram] Optional.
  /// [region] Required.
  /// [rxTxFactor] Optional.
  /// [swap] Optional.
  /// [vcpus] Optional.
  const GetFlavorResult({
    this.description,
    this.disk,
    required this.extraSpecs,
    this.flavorId,
    required this.id,
    this.isPublic,
    this.minDisk,
    this.minRam,
    this.name,
    this.ram,
    required this.region,
    this.rxTxFactor,
    this.swap,
    this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disk': ?disk,
      'extraSpecs': extraSpecs,
      'flavorId': ?flavorId,
      'id': id,
      'isPublic': ?isPublic,
      'minDisk': ?minDisk,
      'minRam': ?minRam,
      'name': ?name,
      'ram': ?ram,
      'region': region,
      'rxTxFactor': ?rxTxFactor,
      'swap': ?swap,
      'vcpus': ?vcpus,
    };
  }

  factory GetFlavorResult.fromMap(Map<String, dynamic> map) {
    return GetFlavorResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return guardedValue as int; })(),
      extraSpecs: (map['extraSpecs'] as Map).cast<String, String>(),
      flavorId: (() { final guardedValue = map['flavorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      minDisk: (() { final guardedValue = map['minDisk']; if (guardedValue == null) return null; return guardedValue as int; })(),
      minRam: (() { final guardedValue = map['minRam']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ram: (() { final guardedValue = map['ram']; if (guardedValue == null) return null; return guardedValue as int; })(),
      region: map['region'] as String,
      rxTxFactor: (() { final guardedValue = map['rxTxFactor']; if (guardedValue == null) return null; return guardedValue as double; })(),
      swap: (() { final guardedValue = map['swap']; if (guardedValue == null) return null; return guardedValue as int; })(),
      vcpus: (() { final guardedValue = map['vcpus']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

