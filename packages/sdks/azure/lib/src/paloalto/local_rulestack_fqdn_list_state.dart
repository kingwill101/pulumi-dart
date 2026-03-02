// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalRulestackFqdnList resources.
class LocalRulestackFqdnListState {
  /// The comment for Audit purposes.
  final pulumi.Input<String>? auditComment;
  /// The description for the FQDN List.
  final pulumi.Input<String>? description;
  /// Specifies a list of Fully Qualified Domain Names.
  final pulumi.Input<List<String>>? fullyQualifiedDomainNames;
  /// The name which should be used for this Palo Alto Local Rulestack FQDN List.
  final pulumi.Input<String>? name;
  /// The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created.
  final pulumi.Input<String>? rulestackId;

  /// Creates a new [LocalRulestackFqdnListState].
  /// [auditComment] The comment for Audit purposes.
  /// [description] The description for the FQDN List.
  /// [fullyQualifiedDomainNames] Specifies a list of Fully Qualified Domain Names.
  /// [name] The name which should be used for this Palo Alto Local Rulestack FQDN List.
  /// [rulestackId] The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created.
  LocalRulestackFqdnListState({
    this.auditComment,
    this.description,
    this.fullyQualifiedDomainNames,
    this.name,
    this.rulestackId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'fullyQualifiedDomainNames': ?fullyQualifiedDomainNames,
      'name': ?name,
      'rulestackId': ?rulestackId,
    };
  }

  factory LocalRulestackFqdnListState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackFqdnListState(
      auditComment: map['auditComment'] == null ? null : (map['auditComment']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fullyQualifiedDomainNames: map['fullyQualifiedDomainNames'] == null ? null : ((map['fullyQualifiedDomainNames']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      rulestackId: map['rulestackId'] == null ? null : (map['rulestackId']! as String).input(),
    );
  }
}

