// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getObfuscationExpression.
class GetObfuscationExpressionResult {
  final String? accountId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetObfuscationExpressionResult].
  /// [accountId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  GetObfuscationExpressionResult({
    this.accountId,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': id,
      'name': name,
    };
  }

  factory GetObfuscationExpressionResult.fromMap(Map<String, dynamic> map) {
    return GetObfuscationExpressionResult(
      accountId: map['accountId'] == null ? null : map['accountId']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

