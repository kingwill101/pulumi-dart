// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustDeviceCustomProfileLocalDomainFallback.
class GetZeroTrustDeviceCustomProfileLocalDomainFallbackResult {
  final String? accountId;
  /// A description of the fallback domain, displayed in the client UI.
  final String? description;
  /// A list of IP addresses to handle domain resolution.
  final List<String>? dnsServers;
  /// The ID of this resource.
  final String? id;
  final String? policyId;
  /// The domain suffix to match when resolving locally.
  final String? suffix;

  /// Creates a new [GetZeroTrustDeviceCustomProfileLocalDomainFallbackResult].
  /// [accountId] Optional.
  /// [description] A description of the fallback domain, displayed in the client UI.
  /// [dnsServers] A list of IP addresses to handle domain resolution.
  /// [id] The ID of this resource.
  /// [policyId] Optional.
  /// [suffix] The domain suffix to match when resolving locally.
  const GetZeroTrustDeviceCustomProfileLocalDomainFallbackResult({
    this.accountId,
    this.description,
    this.dnsServers,
    this.id,
    this.policyId,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'dnsServers': ?dnsServers,
      'id': ?id,
      'policyId': ?policyId,
      'suffix': ?suffix,
    };
  }

  factory GetZeroTrustDeviceCustomProfileLocalDomainFallbackResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileLocalDomainFallbackResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
