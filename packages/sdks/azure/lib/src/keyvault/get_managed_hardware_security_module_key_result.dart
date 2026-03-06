// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedHardwareSecurityModuleKey.
class GetManagedHardwareSecurityModuleKeyResult {
  /// The EC Curve name of this Managed Hardware Security Module Key.
  final String curve;
  final String expirationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of JSON web key operations assigned to this Managed Hardware Security Module Key
  final List<String> keyOpts;
  /// Specifies the Size of this Managed Hardware Security Module Key.
  final int keySize;
  /// Specifies the Key Type of this Managed Hardware Security Module Key
  final String keyType;
  final String managedHsmId;
  final String name;
  final String notBeforeDate;
  /// A mapping of tags assigned to this Managed Hardware Security Module Key.
  final Map<String, String> tags;
  /// The current version of the Managed Hardware Security Module Key.
  final String version;
  /// The versioned ID of the Managed Hardware Security Module Key.
  final String versionedId;

  /// Creates a new [GetManagedHardwareSecurityModuleKeyResult].
  /// [curve] The EC Curve name of this Managed Hardware Security Module Key.
  /// [expirationDate] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyOpts] A list of JSON web key operations assigned to this Managed Hardware Security Module Key
  /// [keySize] Specifies the Size of this Managed Hardware Security Module Key.
  /// [keyType] Specifies the Key Type of this Managed Hardware Security Module Key
  /// [managedHsmId] Required.
  /// [name] Required.
  /// [notBeforeDate] Required.
  /// [tags] A mapping of tags assigned to this Managed Hardware Security Module Key.
  /// [version] The current version of the Managed Hardware Security Module Key.
  /// [versionedId] The versioned ID of the Managed Hardware Security Module Key.
  const GetManagedHardwareSecurityModuleKeyResult({
    required this.curve,
    required this.expirationDate,
    required this.id,
    required this.keyOpts,
    required this.keySize,
    required this.keyType,
    required this.managedHsmId,
    required this.name,
    required this.notBeforeDate,
    required this.tags,
    required this.version,
    required this.versionedId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': curve,
      'expirationDate': expirationDate,
      'id': id,
      'keyOpts': keyOpts,
      'keySize': keySize,
      'keyType': keyType,
      'managedHsmId': managedHsmId,
      'name': name,
      'notBeforeDate': notBeforeDate,
      'tags': tags,
      'version': version,
      'versionedId': versionedId,
    };
  }

  factory GetManagedHardwareSecurityModuleKeyResult.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleKeyResult(
      curve: map['curve'] as String,
      expirationDate: map['expirationDate'] as String,
      id: map['id'] as String,
      keyOpts: (map['keyOpts'] as List).cast<String>(),
      keySize: map['keySize'] as int,
      keyType: map['keyType'] as String,
      managedHsmId: map['managedHsmId'] as String,
      name: map['name'] as String,
      notBeforeDate: map['notBeforeDate'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
      versionedId: map['versionedId'] as String,
    );
  }
}

