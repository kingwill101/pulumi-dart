// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalRulestack resources.
class LocalRulestackState {
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
  final pulumi.Input<String>? resourceGroupName;
  /// The setting to use for the URL Filtering Profile. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? urlFilteringProfile;
  /// The setting to use for the Vulnerability Profile. Possible values include `BestPractice`, and `Custom`.
  final pulumi.Input<String>? vulnerabilityProfile;

  /// Creates a new [LocalRulestackState].
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
  LocalRulestackState({
    pulumi.Output<String>? antiSpywareProfile,
    pulumi.Output<String>? antiVirusProfile,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsSubscription,
    pulumi.Output<String>? fileBlockingProfile,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? urlFilteringProfile,
    pulumi.Output<String>? vulnerabilityProfile,
  }) :
      antiSpywareProfile = pulumi.Input.asOptionalInput<String>(antiSpywareProfile),
      antiVirusProfile = pulumi.Input.asOptionalInput<String>(antiVirusProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsSubscription = pulumi.Input.asOptionalInput<String>(dnsSubscription),
      fileBlockingProfile = pulumi.Input.asOptionalInput<String>(fileBlockingProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      urlFilteringProfile = pulumi.Input.asOptionalInput<String>(urlFilteringProfile),
      vulnerabilityProfile = pulumi.Input.asOptionalInput<String>(vulnerabilityProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antiSpywareProfile': ?antiSpywareProfile,
      'antiVirusProfile': ?antiVirusProfile,
      'description': ?description,
      'dnsSubscription': ?dnsSubscription,
      'fileBlockingProfile': ?fileBlockingProfile,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'urlFilteringProfile': ?urlFilteringProfile,
      'vulnerabilityProfile': ?vulnerabilityProfile,
    };
  }

  factory LocalRulestackState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackState(
      antiSpywareProfile: map['antiSpywareProfile'] == null ? null : pulumi.Output.create<String>(map['antiSpywareProfile'] as String),
      antiVirusProfile: map['antiVirusProfile'] == null ? null : pulumi.Output.create<String>(map['antiVirusProfile'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsSubscription: map['dnsSubscription'] == null ? null : pulumi.Output.create<String>(map['dnsSubscription'] as String),
      fileBlockingProfile: map['fileBlockingProfile'] == null ? null : pulumi.Output.create<String>(map['fileBlockingProfile'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : pulumi.Output.create<String>(map['urlFilteringProfile'] as String),
      vulnerabilityProfile: map['vulnerabilityProfile'] == null ? null : pulumi.Output.create<String>(map['vulnerabilityProfile'] as String),
    );
  }
}

