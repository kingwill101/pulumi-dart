// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPreviewsBaseConfigEnv {
  /// The kind of resource that the binding provides.
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkerPreviewsBaseConfigEnv].
  /// [type] The kind of resource that the binding provides.
  const GetWorkerPreviewsBaseConfigEnv({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetWorkerPreviewsBaseConfigEnv.fromMap(Map<String, dynamic> map) {
    return GetWorkerPreviewsBaseConfigEnv(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
