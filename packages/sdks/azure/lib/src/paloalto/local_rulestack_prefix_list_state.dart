// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalRulestackPrefixList resources.
class LocalRulestackPrefixListState {
  /// The comment for Audit purposes.
  final pulumi.Input<String>? auditComment;
  /// The description for the Prefix List.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Palo Alto Local Rulestack Prefix List.
  final pulumi.Input<String>? name;
  /// Specifies a list of Prefixes.
  final pulumi.Input<List<String>>? prefixLists;
  /// The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created.
  final pulumi.Input<String>? rulestackId;

  /// Creates a new [LocalRulestackPrefixListState].
  /// [auditComment] The comment for Audit purposes.
  /// [description] The description for the Prefix List.
  /// [name] The name which should be used for this Palo Alto Local Rulestack Prefix List.
  /// [prefixLists] Specifies a list of Prefixes.
  /// [rulestackId] The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created.
  LocalRulestackPrefixListState({
    this.auditComment,
    this.description,
    this.name,
    this.prefixLists,
    this.rulestackId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'name': ?name,
      'prefixLists': ?prefixLists,
      'rulestackId': ?rulestackId,
    };
  }

  factory LocalRulestackPrefixListState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackPrefixListState(
      auditComment: map['auditComment'] == null ? null : (map['auditComment'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      prefixLists: map['prefixLists'] == null ? null : ((map['prefixLists'] as List).cast<String>()).input(),
      rulestackId: map['rulestackId'] == null ? null : (map['rulestackId'] as String).input(),
    );
  }
}

