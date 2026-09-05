// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironmentType.
class GetEnvironmentTypeResult {
  final String? devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// A mapping of tags assigned to the Dev Center Environment Type.
  final Map<String, String>? tags;

  /// Creates a new [GetEnvironmentTypeResult].
  /// [devCenterId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [tags] A mapping of tags assigned to the Dev Center Environment Type.
  const GetEnvironmentTypeResult({
    this.devCenterId,
    this.id,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'id': ?id,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory GetEnvironmentTypeResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentTypeResult(
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
