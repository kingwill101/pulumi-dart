// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCloudAccount.
class GetCloudAccountResult {
  final String? accountId;
  final String cloudProvider;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetCloudAccountResult].
  /// [accountId] Optional.
  /// [cloudProvider] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  const GetCloudAccountResult({
    this.accountId,
    required this.cloudProvider,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cloudProvider': cloudProvider,
      'id': id,
      'name': name,
    };
  }

  factory GetCloudAccountResult.fromMap(Map<String, dynamic> map) {
    return GetCloudAccountResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudProvider: map['cloudProvider'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

