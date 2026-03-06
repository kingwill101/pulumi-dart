// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPool.
class GetPoolResult {
  final String accountName;
  /// Whether the NetApp Pool can hold cool access enabled volumes.
  final bool coolAccessEnabled;
  /// The custom throughput for the pool in MiB/s.
  final int customThroughputMibps;
  /// The encryption type of the pool.
  final String encryptionType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the NetApp Pool exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The service level of the file system.
  final String serviceLevel;
  /// Provisioned size of the pool in TB.
  final int sizeInTb;

  /// Creates a new [GetPoolResult].
  /// [accountName] Required.
  /// [coolAccessEnabled] Whether the NetApp Pool can hold cool access enabled volumes.
  /// [customThroughputMibps] The custom throughput for the pool in MiB/s.
  /// [encryptionType] The encryption type of the pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the NetApp Pool exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [serviceLevel] The service level of the file system.
  /// [sizeInTb] Provisioned size of the pool in TB.
  const GetPoolResult({
    required this.accountName,
    required this.coolAccessEnabled,
    required this.customThroughputMibps,
    required this.encryptionType,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.serviceLevel,
    required this.sizeInTb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'coolAccessEnabled': coolAccessEnabled,
      'customThroughputMibps': customThroughputMibps,
      'encryptionType': encryptionType,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serviceLevel': serviceLevel,
      'sizeInTb': sizeInTb,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      accountName: map['accountName'] as String,
      coolAccessEnabled: map['coolAccessEnabled'] as bool,
      customThroughputMibps: map['customThroughputMibps'] as int,
      encryptionType: map['encryptionType'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceLevel: map['serviceLevel'] as String,
      sizeInTb: map['sizeInTb'] as int,
    );
  }
}

