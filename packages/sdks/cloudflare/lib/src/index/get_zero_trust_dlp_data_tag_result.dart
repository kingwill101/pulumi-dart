// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustDlpDataTag.
class GetZeroTrustDlpDataTagResult {
  final String? accountId;
  final String? categoryId;
  final String? createdAt;
  final String? description;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final String? tagId;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpDataTagResult].
  /// [accountId] Optional.
  /// [categoryId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [tagId] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustDlpDataTagResult({
    this.accountId,
    this.categoryId,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.tagId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'categoryId': ?categoryId,
      'createdAt': ?createdAt,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'tagId': ?tagId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDlpDataTagResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataTagResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tagId: (() { final guardedValue = map['tagId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
