// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultPreviewsBaseConfigEnv {
  /// The kind of resource that the binding provides.
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkersResultPreviewsBaseConfigEnv].
  /// [type] The kind of resource that the binding provides.
  const GetWorkersResultPreviewsBaseConfigEnv({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetWorkersResultPreviewsBaseConfigEnv.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultPreviewsBaseConfigEnv(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
