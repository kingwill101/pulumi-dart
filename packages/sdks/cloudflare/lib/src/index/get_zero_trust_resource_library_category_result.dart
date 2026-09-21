// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustResourceLibraryCategory.
class GetZeroTrustResourceLibraryCategoryResult {
  final String? accountId;
  /// Returns the category creation time.
  final String? createdAt;
  /// Returns the category description.
  final String? description;
  /// Returns the category ID.
  final int? id;
  /// Returns the category name.
  final String? name;

  /// Creates a new [GetZeroTrustResourceLibraryCategoryResult].
  /// [accountId] Optional.
  /// [createdAt] Returns the category creation time.
  /// [description] Returns the category description.
  /// [id] Returns the category ID.
  /// [name] Returns the category name.
  const GetZeroTrustResourceLibraryCategoryResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetZeroTrustResourceLibraryCategoryResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryCategoryResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
