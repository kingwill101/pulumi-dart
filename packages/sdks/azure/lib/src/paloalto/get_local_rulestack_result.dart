// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocalRulestack.
class GetLocalRulestackResult {
  /// The Anti-Spyware setting used by the Palo Alto Networks Rulestack.
  final String? antiSpywareProfile;
  /// The Anti-Virus setting used by the Palo Alto Networks Rulestack.
  final String? antiVirusProfile;
  /// The description of the Palo Alto Networks Rulestack.
  final String? description;
  /// The DNS Subscription setting used by the Palo Alto Networks Rulestack.
  final String? dnsSubscription;
  /// The File Blocking Profile used by the Palo Alto Networks Rulestack.
  final String? fileBlockingProfile;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Palo Alto Networks Rulestack exists.
  final String? location;
  final String? name;
  /// The trusted egress decryption profile data for the Palo Alto Networks Rulestack.
  final String? outboundTrustCertificate;
  /// The untrusted egress decryption profile data for the Palo Alto Networks Rulestack.
  final String? outboundUntrustCertificate;
  final String? resourceGroupName;
  /// The URL Filtering Profile used by the Palo Alto Networks Rulestack.
  final String? urlFilteringProfile;
  /// The Vulnerability Profile used by the Palo Alto Networks Rulestack.
  final String? vulnerabilityProfile;

  /// Creates a new [GetLocalRulestackResult].
  /// [antiSpywareProfile] The Anti-Spyware setting used by the Palo Alto Networks Rulestack.
  /// [antiVirusProfile] The Anti-Virus setting used by the Palo Alto Networks Rulestack.
  /// [description] The description of the Palo Alto Networks Rulestack.
  /// [dnsSubscription] The DNS Subscription setting used by the Palo Alto Networks Rulestack.
  /// [fileBlockingProfile] The File Blocking Profile used by the Palo Alto Networks Rulestack.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Palo Alto Networks Rulestack exists.
  /// [name] Optional.
  /// [outboundTrustCertificate] The trusted egress decryption profile data for the Palo Alto Networks Rulestack.
  /// [outboundUntrustCertificate] The untrusted egress decryption profile data for the Palo Alto Networks Rulestack.
  /// [resourceGroupName] Optional.
  /// [urlFilteringProfile] The URL Filtering Profile used by the Palo Alto Networks Rulestack.
  /// [vulnerabilityProfile] The Vulnerability Profile used by the Palo Alto Networks Rulestack.
  const GetLocalRulestackResult({
    this.antiSpywareProfile,
    this.antiVirusProfile,
    this.description,
    this.dnsSubscription,
    this.fileBlockingProfile,
    this.id,
    this.location,
    this.name,
    this.outboundTrustCertificate,
    this.outboundUntrustCertificate,
    this.resourceGroupName,
    this.urlFilteringProfile,
    this.vulnerabilityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antiSpywareProfile': ?antiSpywareProfile,
      'antiVirusProfile': ?antiVirusProfile,
      'description': ?description,
      'dnsSubscription': ?dnsSubscription,
      'fileBlockingProfile': ?fileBlockingProfile,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'outboundTrustCertificate': ?outboundTrustCertificate,
      'outboundUntrustCertificate': ?outboundUntrustCertificate,
      'resourceGroupName': ?resourceGroupName,
      'urlFilteringProfile': ?urlFilteringProfile,
      'vulnerabilityProfile': ?vulnerabilityProfile,
    };
  }

  factory GetLocalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackResult(
      antiSpywareProfile: (() { final guardedValue = map['antiSpywareProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      antiVirusProfile: (() { final guardedValue = map['antiVirusProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSubscription: (() { final guardedValue = map['dnsSubscription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileBlockingProfile: (() { final guardedValue = map['fileBlockingProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundTrustCertificate: (() { final guardedValue = map['outboundTrustCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundUntrustCertificate: (() { final guardedValue = map['outboundUntrustCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urlFilteringProfile: (() { final guardedValue = map['urlFilteringProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vulnerabilityProfile: (() { final guardedValue = map['vulnerabilityProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
