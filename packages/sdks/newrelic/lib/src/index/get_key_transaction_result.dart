// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeyTransaction.
class GetKeyTransactionResult {
  final String accountId;
  /// Domain of the key transaction in New Relic.
  final String domain;
  /// GUID of the key transaction in New Relic.
  final String guid;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// Type of the key transaction in New Relic.
  final String type;

  /// Creates a new [GetKeyTransactionResult].
  /// [accountId] Required.
  /// [domain] Domain of the key transaction in New Relic.
  /// [guid] GUID of the key transaction in New Relic.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [type] Type of the key transaction in New Relic.
  GetKeyTransactionResult({
    required this.accountId,
    required this.domain,
    required this.guid,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domain': domain,
      'guid': guid,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetKeyTransactionResult.fromMap(Map<String, dynamic> map) {
    return GetKeyTransactionResult(
      accountId: map['accountId'] as String,
      domain: map['domain'] as String,
      guid: map['guid'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

