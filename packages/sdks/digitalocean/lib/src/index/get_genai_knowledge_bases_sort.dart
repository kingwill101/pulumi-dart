// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiKnowledgeBasesSort {
  final pulumi.Input<String>? direction;
  final pulumi.Input<String> key;

  /// Creates a new [GetGenaiKnowledgeBasesSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiKnowledgeBasesSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGenaiKnowledgeBasesSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBasesSort(
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

