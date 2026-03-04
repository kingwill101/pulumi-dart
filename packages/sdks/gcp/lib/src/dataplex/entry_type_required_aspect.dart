// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntryTypeRequiredAspect {
  /// Required aspect type for the entry type.
  final pulumi.Input<String>? type;

  /// Creates a new [EntryTypeRequiredAspect].
  /// [type] Required aspect type for the entry type.
  EntryTypeRequiredAspect({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory EntryTypeRequiredAspect.fromMap(Map<String, dynamic> map) {
    return EntryTypeRequiredAspect(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
