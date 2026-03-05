// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLocalRulestack.
class GetLocalRulestackResult {
  /// The Anti-Spyware setting used by the Palo Alto Networks Rulestack.
  final String antiSpywareProfile;

  /// The Anti-Virus setting used by the Palo Alto Networks Rulestack.
  final String antiVirusProfile;

  /// The description of the Palo Alto Networks Rulestack.
  final String description;

  /// The DNS Subscription setting used by the Palo Alto Networks Rulestack.
  final String dnsSubscription;

  /// The File Blocking Profile used by the Palo Alto Networks Rulestack.
  final String fileBlockingProfile;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region where the Palo Alto Networks Rulestack exists.
  final String location;
  final String name;

  /// The trusted egress decryption profile data for the Palo Alto Networks Rulestack.
  final String outboundTrustCertificate;

  /// The untrusted egress decryption profile data for the Palo Alto Networks Rulestack.
  final String outboundUntrustCertificate;
  final String resourceGroupName;

  /// The URL Filtering Profile used by the Palo Alto Networks Rulestack.
  final String urlFilteringProfile;

  /// The Vulnerability Profile used by the Palo Alto Networks Rulestack.
  final String vulnerabilityProfile;

  /// Creates a new [GetLocalRulestackResult].
  /// [antiSpywareProfile] The Anti-Spyware setting used by the Palo Alto Networks Rulestack.
  /// [antiVirusProfile] The Anti-Virus setting used by the Palo Alto Networks Rulestack.
  /// [description] The description of the Palo Alto Networks Rulestack.
  /// [dnsSubscription] The DNS Subscription setting used by the Palo Alto Networks Rulestack.
  /// [fileBlockingProfile] The File Blocking Profile used by the Palo Alto Networks Rulestack.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Palo Alto Networks Rulestack exists.
  /// [name] Required.
  /// [outboundTrustCertificate] The trusted egress decryption profile data for the Palo Alto Networks Rulestack.
  /// [outboundUntrustCertificate] The untrusted egress decryption profile data for the Palo Alto Networks Rulestack.
  /// [resourceGroupName] Required.
  /// [urlFilteringProfile] The URL Filtering Profile used by the Palo Alto Networks Rulestack.
  /// [vulnerabilityProfile] The Vulnerability Profile used by the Palo Alto Networks Rulestack.
  GetLocalRulestackResult({
    required this.antiSpywareProfile,
    required this.antiVirusProfile,
    required this.description,
    required this.dnsSubscription,
    required this.fileBlockingProfile,
    required this.id,
    required this.location,
    required this.name,
    required this.outboundTrustCertificate,
    required this.outboundUntrustCertificate,
    required this.resourceGroupName,
    required this.urlFilteringProfile,
    required this.vulnerabilityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antiSpywareProfile': antiSpywareProfile,
      'antiVirusProfile': antiVirusProfile,
      'description': description,
      'dnsSubscription': dnsSubscription,
      'fileBlockingProfile': fileBlockingProfile,
      'id': id,
      'location': location,
      'name': name,
      'outboundTrustCertificate': outboundTrustCertificate,
      'outboundUntrustCertificate': outboundUntrustCertificate,
      'resourceGroupName': resourceGroupName,
      'urlFilteringProfile': urlFilteringProfile,
      'vulnerabilityProfile': vulnerabilityProfile,
    };
  }

  factory GetLocalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackResult(
      antiSpywareProfile: map['antiSpywareProfile'] as String,
      antiVirusProfile: map['antiVirusProfile'] as String,
      description: map['description'] as String,
      dnsSubscription: map['dnsSubscription'] as String,
      fileBlockingProfile: map['fileBlockingProfile'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outboundTrustCertificate: map['outboundTrustCertificate'] as String,
      outboundUntrustCertificate: map['outboundUntrustCertificate'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      urlFilteringProfile: map['urlFilteringProfile'] as String,
      vulnerabilityProfile: map['vulnerabilityProfile'] as String,
    );
  }
}
