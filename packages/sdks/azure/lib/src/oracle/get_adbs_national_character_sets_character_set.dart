// ignore_for_file: unused_element, unnecessary_cast


class GetAdbsNationalCharacterSetsCharacterSet {
  /// A valid Oracle national character set.
  final String characterSet;

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
      characterSet: map['characterSet'] as String,
    );
  }
}

