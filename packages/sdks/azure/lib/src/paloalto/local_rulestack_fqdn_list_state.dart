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
    pulumi.Output<String>? auditComment,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? fullyQualifiedDomainNames,
    pulumi.Output<String>? name,
    pulumi.Output<String>? rulestackId,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      fullyQualifiedDomainNames = pulumi.Input.asOptionalInput<List<String>>(fullyQualifiedDomainNames),
      name = pulumi.Input.asOptionalInput<String>(name),
      rulestackId = pulumi.Input.asOptionalInput<String>(rulestackId);

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
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fullyQualifiedDomainNames: map['fullyQualifiedDomainNames'] == null ? null : pulumi.Output.create<List<String>>((map['fullyQualifiedDomainNames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rulestackId: map['rulestackId'] == null ? null : pulumi.Output.create<String>(map['rulestackId'] as String),
    );
  }
}

