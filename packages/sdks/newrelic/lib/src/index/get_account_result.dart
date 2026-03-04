// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccount.
class GetAccountResult {
  final String? accountId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;
  final String region;
  final String? scope;

  /// Creates a new [GetAccountResult].
  /// [accountId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Required.
  /// [scope] Optional.
  GetAccountResult({
    this.accountId,
    required this.id,
    this.name,
    required this.region,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': id,
      'name': ?name,
      'region': region,
      'scope': ?scope,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
