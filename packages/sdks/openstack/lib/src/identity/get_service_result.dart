// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The service description.
  final String description;
  /// See Argument Reference above.
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String? name;
  /// See Argument Reference above.
  final String region;
  /// See Argument Reference above.
  final String? type;

  /// Creates a new [GetServiceResult].
  /// [description] The service description.
  /// [enabled] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [type] See Argument Reference above.
  const GetServiceResult({
    required this.description,
    this.enabled,
    required this.id,
    this.name,
    required this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': ?enabled,
      'id': id,
      'name': ?name,
      'region': region,
      'type': ?type,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      description: map['description'] as String,
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

