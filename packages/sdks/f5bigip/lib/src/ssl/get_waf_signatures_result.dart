// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWafSignatures.
class GetWafSignaturesResult {
  /// The relative detection accuracy of the signature.
  final String accuracy;
  /// Description of the signature.
  final String? description;
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String json;
  /// Name of the signature as configured on the system.
  final String name;
  final bool? performStaging;
  /// The relative risk level of the attack that matches this signature.
  final String risk;
  /// ID of the signature in the database.
  final int signatureId;
  /// System generated ID of the signature.
  final String systemSignatureId;
  final String tag;
  /// Type of the signature.
  final String type;

  /// Creates a new [GetWafSignaturesResult].
  /// [accuracy] The relative detection accuracy of the signature.
  /// [description] Description of the signature.
  /// [enabled] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Required.
  /// [name] Name of the signature as configured on the system.
  /// [performStaging] Optional.
  /// [risk] The relative risk level of the attack that matches this signature.
  /// [signatureId] ID of the signature in the database.
  /// [systemSignatureId] System generated ID of the signature.
  /// [tag] Required.
  /// [type] Type of the signature.
  GetWafSignaturesResult({
    required this.accuracy,
    this.description,
    this.enabled,
    required this.id,
    required this.json,
    required this.name,
    this.performStaging,
    required this.risk,
    required this.signatureId,
    required this.systemSignatureId,
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accuracy': accuracy,
      'description': ?description,
      'enabled': ?enabled,
      'id': id,
      'json': json,
      'name': name,
      'performStaging': ?performStaging,
      'risk': risk,
      'signatureId': signatureId,
      'systemSignatureId': systemSignatureId,
      'tag': tag,
      'type': type,
    };
  }

  factory GetWafSignaturesResult.fromMap(Map<String, dynamic> map) {
    return GetWafSignaturesResult(
      accuracy: map['accuracy'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      json: map['json'] as String,
      name: map['name'] as String,
      performStaging: (() { final guardedValue = map['performStaging']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      risk: map['risk'] as String,
      signatureId: map['signatureId'] as int,
      systemSignatureId: map['systemSignatureId'] as String,
      tag: map['tag'] as String,
      type: map['type'] as String,
    );
  }
}

