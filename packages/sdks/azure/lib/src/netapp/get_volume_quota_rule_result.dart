// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVolumeQuotaRule.
class GetVolumeQuotaRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region where the Volume Quota Rule exists.
  final String location;
  final String name;

  /// The quota size in kibibytes.
  final int quotaSizeInKib;

  /// The quota Target.
  final String quotaTarget;

  /// The quota type.
  final String quotaType;
  final String volumeId;

  /// Creates a new [GetVolumeQuotaRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Volume Quota Rule exists.
  /// [name] Required.
  /// [quotaSizeInKib] The quota size in kibibytes.
  /// [quotaTarget] The quota Target.
  /// [quotaType] The quota type.
  /// [volumeId] Required.
  GetVolumeQuotaRuleResult({
    required this.id,
    required this.location,
    required this.name,
    required this.quotaSizeInKib,
    required this.quotaTarget,
    required this.quotaType,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'quotaSizeInKib': quotaSizeInKib,
      'quotaTarget': quotaTarget,
      'quotaType': quotaType,
      'volumeId': volumeId,
    };
  }

  factory GetVolumeQuotaRuleResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeQuotaRuleResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      quotaSizeInKib: map['quotaSizeInKib'] as int,
      quotaTarget: map['quotaTarget'] as String,
      quotaType: map['quotaType'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}
