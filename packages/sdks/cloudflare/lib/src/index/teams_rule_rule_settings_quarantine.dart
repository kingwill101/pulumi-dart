// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsQuarantine {
  /// Specify the types of files to sandbox.
  final pulumi.Input<List<String>?>? fileTypes;

  /// Creates a new [TeamsRuleRuleSettingsQuarantine].
  /// [fileTypes] Specify the types of files to sandbox.
  const TeamsRuleRuleSettingsQuarantine({
    this.fileTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileTypes': ?fileTypes,
    };
  }

  factory TeamsRuleRuleSettingsQuarantine.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsQuarantine(
      fileTypes: (() { final guardedValue = map['fileTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
