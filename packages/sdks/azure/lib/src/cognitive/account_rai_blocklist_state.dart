// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountRaiBlocklist resources.
class AccountRaiBlocklistState {
  /// The ID of the Cognitive Services Account. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  final pulumi.Input<String>? cognitiveAccountId;
  /// A short description for the Cognitive Account Rai Blocklist.
  final pulumi.Input<String>? description;
  /// The name of the Cognitive Account Rai Blocklist. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AccountRaiBlocklistState].
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  /// [description] A short description for the Cognitive Account Rai Blocklist.
  /// [name] The name of the Cognitive Account Rai Blocklist. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  AccountRaiBlocklistState({
    pulumi.Output<String>? cognitiveAccountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
  }) :
      cognitiveAccountId = pulumi.Input.asOptionalInput<String>(cognitiveAccountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': ?cognitiveAccountId,
      'description': ?description,
      'name': ?name,
    };
  }

  factory AccountRaiBlocklistState.fromMap(Map<String, dynamic> map) {
    return AccountRaiBlocklistState(
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : pulumi.Output.create<String>(map['cognitiveAccountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

