// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVolumeQuotaRule.
class GetVolumeQuotaRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Volume Quota Rule exists.
  final String? location;
  final String? name;
  /// The quota size in kibibytes.
  final int? quotaSizeInKib;
  /// The quota Target.
  final String? quotaTarget;
  /// The quota type.
  final String? quotaType;
  final String? volumeId;

  /// Creates a new [GetVolumeQuotaRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Volume Quota Rule exists.
  /// [name] Optional.
  /// [quotaSizeInKib] The quota size in kibibytes.
  /// [quotaTarget] The quota Target.
  /// [quotaType] The quota type.
  /// [volumeId] Optional.
  const GetVolumeQuotaRuleResult({
    this.id,
    this.location,
    this.name,
    this.quotaSizeInKib,
    this.quotaTarget,
    this.quotaType,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'quotaSizeInKib': ?quotaSizeInKib,
      'quotaTarget': ?quotaTarget,
      'quotaType': ?quotaType,
      'volumeId': ?volumeId,
    };
  }

  factory GetVolumeQuotaRuleResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeQuotaRuleResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaSizeInKib: (() { final guardedValue = map['quotaSizeInKib']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      quotaTarget: (() { final guardedValue = map['quotaTarget']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaType: (() { final guardedValue = map['quotaType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
