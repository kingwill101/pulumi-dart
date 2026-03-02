// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReferenceListEntry {
  /// Required. The value of the entry. Maximum length is 512 characters.
  final pulumi.Input<String> value;

  /// Creates a new [ReferenceListEntry].
  /// [value] Required. The value of the entry. Maximum length is 512 characters.
  ReferenceListEntry({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ReferenceListEntry.fromMap(Map<String, dynamic> map) {
    return ReferenceListEntry(
      value: (map['value'] as String).input(),
    );
  }
}

