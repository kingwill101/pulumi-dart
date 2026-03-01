// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_local_rulestack_fqdn_list_local_rulestack_fqdn_list_args_doc}
/// The set of arguments for LocalRulestackFqdnList.
/// {@endtemplate}
/// {@macro pulumi_paloalto_local_rulestack_fqdn_list_local_rulestack_fqdn_list_args_doc}
class LocalRulestackFqdnListArgs {
  /// The comment for Audit purposes.
  final pulumi.Input<String>? auditComment;
  /// The description for the FQDN List.
  final pulumi.Input<String>? description;
  /// Specifies a list of Fully Qualified Domain Names.
  final pulumi.Input<List<String>> fullyQualifiedDomainNames;
  /// The name which should be used for this Palo Alto Local Rulestack FQDN List.
  final pulumi.Input<String>? name;
  /// The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created.
  final pulumi.Input<String> rulestackId;

  /// Creates a new [LocalRulestackFqdnListArgs].
  /// [auditComment] The comment for Audit purposes.
  /// [description] The description for the FQDN List.
  /// [fullyQualifiedDomainNames] Specifies a list of Fully Qualified Domain Names.
  /// [name] The name which should be used for this Palo Alto Local Rulestack FQDN List.
  /// [rulestackId] The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created.
  LocalRulestackFqdnListArgs({
    pulumi.Output<String>? auditComment,
    pulumi.Output<String>? description,
    required pulumi.Output<List<String>> fullyQualifiedDomainNames,
    pulumi.Output<String>? name,
    required pulumi.Output<String> rulestackId,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      fullyQualifiedDomainNames = pulumi.Input.asInput<List<String>>(fullyQualifiedDomainNames),
      name = pulumi.Input.asOptionalInput<String>(name),
      rulestackId = pulumi.Input.asInput<String>(rulestackId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'fullyQualifiedDomainNames': fullyQualifiedDomainNames,
      'name': ?name,
      'rulestackId': rulestackId,
    };
  }

  factory LocalRulestackFqdnListArgs.fromMap(Map<String, dynamic> map) {
    return LocalRulestackFqdnListArgs(
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fullyQualifiedDomainNames: pulumi.Output.create<List<String>>((map['fullyQualifiedDomainNames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rulestackId: pulumi.Output.create<String>(map['rulestackId'] as String),
    );
  }
}

