// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustDlpSensitivityLevel.
class GetZeroTrustDlpSensitivityLevelResult {
  final String? accountId;
  final String? createdAt;
  final String? description;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final String? sensitivityGroupId;
  final String? sensitivityLevelId;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpSensitivityLevelResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [sensitivityGroupId] Optional.
  /// [sensitivityLevelId] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustDlpSensitivityLevelResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.sensitivityGroupId,
    this.sensitivityLevelId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'sensitivityGroupId': ?sensitivityGroupId,
      'sensitivityLevelId': ?sensitivityLevelId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDlpSensitivityLevelResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityLevelResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensitivityGroupId: (() { final guardedValue = map['sensitivityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensitivityLevelId: (() { final guardedValue = map['sensitivityLevelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
