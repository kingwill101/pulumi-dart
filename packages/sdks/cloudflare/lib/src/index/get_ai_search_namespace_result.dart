// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAiSearchNamespace.
class GetAiSearchNamespaceResult {
  final String? accountId;
  final String? createdAt;
  /// Optional description for the namespace. Max 256 characters.
  final String? description;
  final String? name;

  /// Creates a new [GetAiSearchNamespaceResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [name] Optional.
  const GetAiSearchNamespaceResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
    };
  }

  factory GetAiSearchNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespaceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
