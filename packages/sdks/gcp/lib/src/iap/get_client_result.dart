// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClient.
class GetClientResult {
  final String? brand;
  final String? clientId;
  final String? deletionPolicy;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? secret;

  /// Creates a new [GetClientResult].
  /// [brand] Optional.
  /// [clientId] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [secret] Optional.
  const GetClientResult({
    this.brand,
    this.clientId,
    this.deletionPolicy,
    this.displayName,
    this.id,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': ?brand,
      'clientId': ?clientId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'id': ?id,
      'secret': ?secret,
    };
  }

  factory GetClientResult.fromMap(Map<String, dynamic> map) {
    return GetClientResult(
      brand: (() { final guardedValue = map['brand']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
