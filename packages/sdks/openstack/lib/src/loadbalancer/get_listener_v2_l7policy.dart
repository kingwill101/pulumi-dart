// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerV2L7policy {
  final pulumi.Input<String> id;

  /// Creates a new [GetListenerV2L7policy].
  /// [id] Required.
  GetListenerV2L7policy({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetListenerV2L7policy.fromMap(Map<String, dynamic> map) {
    return GetListenerV2L7policy(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

