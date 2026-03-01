// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_local_rulestack_prefix_list_local_rulestack_prefix_list_args_doc}
/// The set of arguments for LocalRulestackPrefixList.
/// {@endtemplate}
/// {@macro pulumi_paloalto_local_rulestack_prefix_list_local_rulestack_prefix_list_args_doc}
class LocalRulestackPrefixListArgs {
  /// The comment for Audit purposes.
  final pulumi.Input<String>? auditComment;
  /// The description for the Prefix List.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Palo Alto Local Rulestack Prefix List.
  final pulumi.Input<String>? name;
  /// Specifies a list of Prefixes.
  final pulumi.Input<List<String>> prefixLists;
  /// The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created.
  final pulumi.Input<String> rulestackId;

  /// Creates a new [LocalRulestackPrefixListArgs].
  /// [auditComment] The comment for Audit purposes.
  /// [description] The description for the Prefix List.
  /// [name] The name which should be used for this Palo Alto Local Rulestack Prefix List.
  /// [prefixLists] Specifies a list of Prefixes.
  /// [rulestackId] The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created.
  LocalRulestackPrefixListArgs({
    pulumi.Output<String>? auditComment,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<List<String>> prefixLists,
    required pulumi.Output<String> rulestackId,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      prefixLists = pulumi.Input.asInput<List<String>>(prefixLists),
      rulestackId = pulumi.Input.asInput<String>(rulestackId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'name': ?name,
      'prefixLists': prefixLists,
      'rulestackId': rulestackId,
    };
  }

  factory LocalRulestackPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return LocalRulestackPrefixListArgs(
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      prefixLists: pulumi.Output.create<List<String>>((map['prefixLists'] as List).cast<String>()),
      rulestackId: pulumi.Output.create<String>(map['rulestackId'] as String),
    );
  }
}

