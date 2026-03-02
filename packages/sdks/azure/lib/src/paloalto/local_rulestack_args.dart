// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_local_rulestack_local_rulestack_args_doc}
/// The set of arguments for LocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_paloalto_local_rulestack_local_rulestack_args_doc}
class LocalRulestackArgs {
  /// The setting to use for Anti-Spyware. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? antiSpywareProfile;
  /// The setting to use for Anti-Virus. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? antiVirusProfile;
  /// The description for this Local Rulestack.
  final pulumi.Input<String>? description;
  /// TThe setting to use for DNS Subscription. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? dnsSubscription;
  /// The setting to use for the File Blocking Profile. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? fileBlockingProfile;
  /// The Azure Region where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Palo Alto Networks Rulestack. Changing this forces a new Palo Alto Networks Rulestack to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The setting to use for the URL Filtering Profile. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? urlFilteringProfile;
  /// The setting to use for the Vulnerability Profile. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? vulnerabilityProfile;

  /// Creates a new [LocalRulestackArgs].
  /// [antiSpywareProfile] The setting to use for Anti-Spyware. Possible values include `BestPractice`, and `Custom`.
  /// [antiVirusProfile] The setting to use for Anti-Virus. Possible values include `BestPractice`, and `Custom`.
  /// [description] The description for this Local Rulestack.
  /// [dnsSubscription] TThe setting to use for DNS Subscription. Possible values include `BestPractice`, and `Custom`.
  /// [fileBlockingProfile] The setting to use for the File Blocking Profile. Possible values include `BestPractice`, and `Custom`.
  /// [location] The Azure Region where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created.
  /// [name] The name which should be used for this Palo Alto Networks Rulestack. Changing this forces a new Palo Alto Networks Rulestack to be created.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created.
  /// [urlFilteringProfile] The setting to use for the URL Filtering Profile. Possible values include `BestPractice`, and `Custom`.
  /// [vulnerabilityProfile] The setting to use for the Vulnerability Profile. Possible values include `BestPractice`, and `Custom`.
  LocalRulestackArgs({
    this.antiSpywareProfile,
    this.antiVirusProfile,
    this.description,
    this.dnsSubscription,
    this.fileBlockingProfile,
    this.location,
    this.name,
    required this.resourceGroupName,
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
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'urlFilteringProfile': ?urlFilteringProfile,
      'vulnerabilityProfile': ?vulnerabilityProfile,
    };
  }

  factory LocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return LocalRulestackArgs(
      antiSpywareProfile: map['antiSpywareProfile'] == null ? null : (map['antiSpywareProfile']! as String).input(),
      antiVirusProfile: map['antiVirusProfile'] == null ? null : (map['antiVirusProfile']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dnsSubscription: map['dnsSubscription'] == null ? null : (map['dnsSubscription']! as String).input(),
      fileBlockingProfile: map['fileBlockingProfile'] == null ? null : (map['fileBlockingProfile']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : (map['urlFilteringProfile']! as String).input(),
      vulnerabilityProfile: map['vulnerabilityProfile'] == null ? null : (map['vulnerabilityProfile']! as String).input(),
    );
  }
}

