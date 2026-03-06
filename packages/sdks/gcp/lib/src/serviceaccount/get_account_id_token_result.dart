// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountIdToken.
class GetAccountIdTokenResult {
  final List<String>? delegates;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The `id_token` representing the new generated identity.
  final String idToken;
  final bool? includeEmail;
  final String targetAudience;
  final String? targetServiceAccount;

  /// Creates a new [GetAccountIdTokenResult].
  /// [delegates] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idToken] The `id_token` representing the new generated identity.
  /// [includeEmail] Optional.
  /// [targetAudience] Required.
  /// [targetServiceAccount] Optional.
  const GetAccountIdTokenResult({
    this.delegates,
    required this.id,
    required this.idToken,
    this.includeEmail,
    required this.targetAudience,
    this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegates': ?delegates,
      'id': id,
      'idToken': idToken,
      'includeEmail': ?includeEmail,
      'targetAudience': targetAudience,
      'targetServiceAccount': ?targetServiceAccount,
    };
  }

  factory GetAccountIdTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAccountIdTokenResult(
      delegates: (() { final guardedValue = map['delegates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      idToken: map['idToken'] as String,
      includeEmail: (() { final guardedValue = map['includeEmail']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      targetAudience: map['targetAudience'] as String,
      targetServiceAccount: (() { final guardedValue = map['targetServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

