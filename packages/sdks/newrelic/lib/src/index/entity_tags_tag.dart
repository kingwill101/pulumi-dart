// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntityTagsTag {
  /// The key of the tag.
  ///
  /// > **NOTE:** One should not use reserved (immutable) keys with this resource. It is recommended to choose unique and descriptive keys which do not conflict with existing reserved keys.
  final pulumi.Input<String> key;
  /// The tag values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [EntityTagsTag].
  /// [key] The key of the tag.
  /// [values] The tag values.
  EntityTagsTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory EntityTagsTag.fromMap(Map<String, dynamic> map) {
    return EntityTagsTag(
      key: (map['key'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

