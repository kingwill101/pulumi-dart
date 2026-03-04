// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAdbsCharacterSetsCharacterSet {
  /// A valid Oracle character set.
  final pulumi.Input<String> characterSet;

  /// Creates a new [GetAdbsCharacterSetsCharacterSet].
  /// [characterSet] A valid Oracle character set.
  GetAdbsCharacterSetsCharacterSet({required this.characterSet});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'characterSet': characterSet};
  }

  factory GetAdbsCharacterSetsCharacterSet.fromMap(Map<String, dynamic> map) {
    return GetAdbsCharacterSetsCharacterSet(
      characterSet: pulumi.Input.fromValue(map['characterSet'] as String),
    );
  }
}
