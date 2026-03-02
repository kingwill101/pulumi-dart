// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrivateLocation.
class GetPrivateLocationResult {
  final String? accountId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The key of the private location.
  final List<String> keys;
  final String name;

  /// Creates a new [GetPrivateLocationResult].
  /// [accountId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keys] The key of the private location.
  /// [name] Required.
  GetPrivateLocationResult({
    this.accountId,
    required this.id,
    required this.keys,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': id,
      'keys': keys,
      'name': name,
    };
  }

  factory GetPrivateLocationResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLocationResult(
      accountId: map['accountId'] == null ? null : map['accountId']! as String,
      id: map['id'] as String,
      keys: (map['keys'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

