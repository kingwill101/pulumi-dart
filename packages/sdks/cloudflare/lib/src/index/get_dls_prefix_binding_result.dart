// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDlsPrefixBinding.
class GetDlsPrefixBindingResult {
  /// Identifier of a Cloudflare account.
  final String? accountId;
  /// Unique identifier for the prefix binding.
  final String? bindingId;
  /// The CIDR that is bound.
  final String? cidr;
  /// Unique identifier for the prefix binding.
  final String? id;
  /// The ID of the parent prefix.
  final String? prefixId;
  /// The region key used for the binding.
  final String? regionKey;

  /// Creates a new [GetDlsPrefixBindingResult].
  /// [accountId] Identifier of a Cloudflare account.
  /// [bindingId] Unique identifier for the prefix binding.
  /// [cidr] The CIDR that is bound.
  /// [id] Unique identifier for the prefix binding.
  /// [prefixId] The ID of the parent prefix.
  /// [regionKey] The region key used for the binding.
  const GetDlsPrefixBindingResult({
    this.accountId,
    this.bindingId,
    this.cidr,
    this.id,
    this.prefixId,
    this.regionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bindingId': ?bindingId,
      'cidr': ?cidr,
      'id': ?id,
      'prefixId': ?prefixId,
      'regionKey': ?regionKey,
    };
  }

  factory GetDlsPrefixBindingResult.fromMap(Map<String, dynamic> map) {
    return GetDlsPrefixBindingResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bindingId: (() { final guardedValue = map['bindingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixId: (() { final guardedValue = map['prefixId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionKey: (() { final guardedValue = map['regionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
