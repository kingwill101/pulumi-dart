// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPreviewsBaseConfigEnv {
  /// The kind of resource that the binding provides.
  final pulumi.Input<String> type;

  /// Creates a new [WorkerPreviewsBaseConfigEnv].
  /// [type] The kind of resource that the binding provides.
  const WorkerPreviewsBaseConfigEnv({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WorkerPreviewsBaseConfigEnv.fromMap(Map<String, dynamic> map) {
    return WorkerPreviewsBaseConfigEnv(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
