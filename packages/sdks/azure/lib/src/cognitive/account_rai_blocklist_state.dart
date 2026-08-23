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
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountRaiBlocklistState].
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  /// [description] A short description for the Cognitive Account Rai Blocklist.
  /// [name] The name of the Cognitive Account Rai Blocklist. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  /// [tags] A mapping of tags assigned to the resource.
  const AccountRaiBlocklistState({
    this.cognitiveAccountId,
    this.description,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': ?cognitiveAccountId,
      'description': ?description,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AccountRaiBlocklistState.fromMap(Map<String, dynamic> map) {
    return AccountRaiBlocklistState(
      cognitiveAccountId: (() { final guardedValue = map['cognitiveAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
