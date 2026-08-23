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
  const LocalRulestackPrefixListState({
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
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixLists: (() { final guardedValue = map['prefixLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rulestackId: (() { final guardedValue = map['rulestackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
