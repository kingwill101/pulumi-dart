// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitive_account_rai_blocklist_account_rai_blocklist_args_doc}
/// The set of arguments for AccountRaiBlocklist.
/// {@endtemplate}
/// {@macro pulumi_cognitive_account_rai_blocklist_account_rai_blocklist_args_doc}
class AccountRaiBlocklistArgs {
  /// The ID of the Cognitive Services Account. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  final pulumi.Input<String> cognitiveAccountId;
  /// A short description for the Cognitive Account Rai Blocklist.
  final pulumi.Input<String>? description;
  /// The name of the Cognitive Account Rai Blocklist. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AccountRaiBlocklistArgs].
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  /// [description] A short description for the Cognitive Account Rai Blocklist.
  /// [name] The name of the Cognitive Account Rai Blocklist. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  AccountRaiBlocklistArgs({
    required this.cognitiveAccountId,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': cognitiveAccountId,
      'description': ?description,
      'name': ?name,
    };
  }

  factory AccountRaiBlocklistArgs.fromMap(Map<String, dynamic> map) {
    return AccountRaiBlocklistArgs(
      cognitiveAccountId: (map['cognitiveAccountId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

