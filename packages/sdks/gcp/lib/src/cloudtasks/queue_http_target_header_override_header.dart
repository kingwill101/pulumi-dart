// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueHttpTargetHeaderOverrideHeader {
  /// The Key of the header.
  final pulumi.Input<String> key;
  /// The Value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [QueueHttpTargetHeaderOverrideHeader].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  QueueHttpTargetHeaderOverrideHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory QueueHttpTargetHeaderOverrideHeader.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetHeaderOverrideHeader(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

