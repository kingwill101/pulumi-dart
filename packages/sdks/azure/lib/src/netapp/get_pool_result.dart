// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPool.
class GetPoolResult {
  final String? accountName;
  /// Whether the NetApp Pool can hold cool access enabled volumes.
  final bool? coolAccessEnabled;
  /// The custom throughput for the pool in MiB/s.
  final int? customThroughputMibps;
  /// The encryption type of the pool.
  final String? encryptionType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the NetApp Pool exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The service level of the file system.
  final String? serviceLevel;
  /// Provisioned size of the pool in TB.
  final int? sizeInTb;

  /// Creates a new [GetPoolResult].
  /// [accountName] Optional.
  /// [coolAccessEnabled] Whether the NetApp Pool can hold cool access enabled volumes.
  /// [customThroughputMibps] The custom throughput for the pool in MiB/s.
  /// [encryptionType] The encryption type of the pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the NetApp Pool exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [serviceLevel] The service level of the file system.
  /// [sizeInTb] Provisioned size of the pool in TB.
  const GetPoolResult({
    this.accountName,
    this.coolAccessEnabled,
    this.customThroughputMibps,
    this.encryptionType,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.serviceLevel,
    this.sizeInTb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'coolAccessEnabled': ?coolAccessEnabled,
      'customThroughputMibps': ?customThroughputMibps,
      'encryptionType': ?encryptionType,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serviceLevel': ?serviceLevel,
      'sizeInTb': ?sizeInTb,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coolAccessEnabled: (() { final guardedValue = map['coolAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      customThroughputMibps: (() { final guardedValue = map['customThroughputMibps']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLevel: (() { final guardedValue = map['serviceLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeInTb: (() { final guardedValue = map['sizeInTb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
