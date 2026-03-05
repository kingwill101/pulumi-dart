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
    this.auditComment,
    this.description,
    this.name,
    required this.prefixLists,
    required this.rulestackId,
  });

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
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixLists: pulumi.Input.fromValue((map['prefixLists'] as List).cast<String>()),
      rulestackId: pulumi.Input.fromValue(map['rulestackId'] as String),
    );
  }
}

