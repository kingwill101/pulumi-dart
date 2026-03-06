// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobQueryConnectionProperty {
  /// The key of the property to set. Currently supported connection properties:
  final pulumi.Input<String> key;
  /// The value of the property to set.
  final pulumi.Input<String> value;

  /// Creates a new [JobQueryConnectionProperty].
  /// [key] The key of the property to set. Currently supported connection properties:
  /// [value] The value of the property to set.
  const JobQueryConnectionProperty({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory JobQueryConnectionProperty.fromMap(Map<String, dynamic> map) {
    return JobQueryConnectionProperty(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

