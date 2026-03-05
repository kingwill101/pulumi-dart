// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAdbsNationalCharacterSetsCharacterSet {
  /// A valid Oracle national character set.
  final pulumi.Input<String> characterSet;

  /// Creates a new [GetAdbsNationalCharacterSetsCharacterSet].
  /// [characterSet] A valid Oracle national character set.
  GetAdbsNationalCharacterSetsCharacterSet({
    required this.characterSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSet': characterSet,
    };
  }

  factory GetAdbsNationalCharacterSetsCharacterSet.fromMap(Map<String, dynamic> map) {
    return GetAdbsNationalCharacterSetsCharacterSet(
      characterSet: pulumi.Input.fromValue(map['characterSet'] as String),
    );
  }
}

