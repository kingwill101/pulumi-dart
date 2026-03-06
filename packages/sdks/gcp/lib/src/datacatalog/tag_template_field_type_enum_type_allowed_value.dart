// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TagTemplateFieldTypeEnumTypeAllowedValue {
  /// The display name of the enum value.
  final pulumi.Input<String> displayName;

  /// Creates a new [TagTemplateFieldTypeEnumTypeAllowedValue].
  /// [displayName] The display name of the enum value.
  const TagTemplateFieldTypeEnumTypeAllowedValue({
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
    };
  }

  factory TagTemplateFieldTypeEnumTypeAllowedValue.fromMap(Map<String, dynamic> map) {
    return TagTemplateFieldTypeEnumTypeAllowedValue(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

