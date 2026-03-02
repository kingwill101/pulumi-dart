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
  GetFlavorResult({
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
      description: map['description'] == null ? null : map['description']! as String,
      disk: map['disk'] == null ? null : map['disk']! as int,
      extraSpecs: (map['extraSpecs'] as Map).cast<String, String>(),
      flavorId: map['flavorId'] == null ? null : map['flavorId']! as String,
      id: map['id'] as String,
      isPublic: map['isPublic'] == null ? null : map['isPublic']! as bool,
      minDisk: map['minDisk'] == null ? null : map['minDisk']! as int,
      minRam: map['minRam'] == null ? null : map['minRam']! as int,
      name: map['name'] == null ? null : map['name']! as String,
      ram: map['ram'] == null ? null : map['ram']! as int,
      region: map['region'] as String,
      rxTxFactor: map['rxTxFactor'] == null ? null : map['rxTxFactor']! as double,
      swap: map['swap'] == null ? null : map['swap']! as int,
      vcpus: map['vcpus'] == null ? null : map['vcpus']! as int,
    );
  }
}

