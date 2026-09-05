// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedHardwareSecurityModuleKey.
class GetManagedHardwareSecurityModuleKeyResult {
  /// The EC Curve name of this Managed Hardware Security Module Key.
  final String? curve;
  final String? expirationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of JSON web key operations assigned to this Managed Hardware Security Module Key
  final List<String>? keyOpts;
  /// Specifies the Size of this Managed Hardware Security Module Key.
  final int? keySize;
  /// Specifies the Key Type of this Managed Hardware Security Module Key
  final String? keyType;
  final String? managedHsmId;
  final String? name;
  final String? notBeforeDate;
  /// A mapping of tags assigned to this Managed Hardware Security Module Key.
  final Map<String, String>? tags;
  /// The current version of the Managed Hardware Security Module Key.
  final String? version;
  /// The versioned ID of the Managed Hardware Security Module Key.
  final String? versionedId;

  /// Creates a new [GetManagedHardwareSecurityModuleKeyResult].
  /// [curve] The EC Curve name of this Managed Hardware Security Module Key.
  /// [expirationDate] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyOpts] A list of JSON web key operations assigned to this Managed Hardware Security Module Key
  /// [keySize] Specifies the Size of this Managed Hardware Security Module Key.
  /// [keyType] Specifies the Key Type of this Managed Hardware Security Module Key
  /// [managedHsmId] Optional.
  /// [name] Optional.
  /// [notBeforeDate] Optional.
  /// [tags] A mapping of tags assigned to this Managed Hardware Security Module Key.
  /// [version] The current version of the Managed Hardware Security Module Key.
  /// [versionedId] The versioned ID of the Managed Hardware Security Module Key.
  const GetManagedHardwareSecurityModuleKeyResult({
    this.curve,
    this.expirationDate,
    this.id,
    this.keyOpts,
    this.keySize,
    this.keyType,
    this.managedHsmId,
    this.name,
    this.notBeforeDate,
    this.tags,
    this.version,
    this.versionedId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': ?curve,
      'expirationDate': ?expirationDate,
      'id': ?id,
      'keyOpts': ?keyOpts,
      'keySize': ?keySize,
      'keyType': ?keyType,
      'managedHsmId': ?managedHsmId,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'tags': ?tags,
      'version': ?version,
      'versionedId': ?versionedId,
    };
  }

  factory GetManagedHardwareSecurityModuleKeyResult.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleKeyResult(
      curve: (() { final guardedValue = map['curve']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyOpts: (() { final guardedValue = map['keyOpts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedHsmId: (() { final guardedValue = map['managedHsmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBeforeDate: (() { final guardedValue = map['notBeforeDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionedId: (() { final guardedValue = map['versionedId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
