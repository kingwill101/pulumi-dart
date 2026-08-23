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
  const LocalRulestackState({
    this.antiSpywareProfile,
    this.antiVirusProfile,
    this.description,
    this.dnsSubscription,
    this.fileBlockingProfile,
    this.location,
    this.name,
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
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'urlFilteringProfile': ?urlFilteringProfile,
      'vulnerabilityProfile': ?vulnerabilityProfile,
    };
  }

  factory LocalRulestackState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackState(
      antiSpywareProfile: (() { final guardedValue = map['antiSpywareProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      antiVirusProfile: (() { final guardedValue = map['antiVirusProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSubscription: (() { final guardedValue = map['dnsSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileBlockingProfile: (() { final guardedValue = map['fileBlockingProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlFilteringProfile: (() { final guardedValue = map['urlFilteringProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vulnerabilityProfile: (() { final guardedValue = map['vulnerabilityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
