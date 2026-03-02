// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAdvancedThreatProtection.
class GetAdvancedThreatProtectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Indicates whether Advanced Threat Protection is enabled.
  final bool? isEnabled;
  /// Resource name
  final String name;
  /// Resource type
  final String type;

  /// Creates a new [GetAdvancedThreatProtectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [isEnabled] Indicates whether Advanced Threat Protection is enabled.
  /// [name] Resource name
  /// [type] Resource type
  GetAdvancedThreatProtectionResult({
    required this.azureApiVersion,
    required this.id,
    this.isEnabled,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'isEnabled': ?isEnabled,
      'name': name,
      'type': type,
    };
  }

  factory GetAdvancedThreatProtectionResult.fromMap(Map<String, dynamic> map) {
    return GetAdvancedThreatProtectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled']! as bool,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

