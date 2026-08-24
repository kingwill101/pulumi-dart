// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewQueueProducers {
  /// Name of the Queue.
  final pulumi.Input<String> name;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewQueueProducers].
  /// [name] Name of the Queue.
  const GetPagesProjectDeploymentConfigsPreviewQueueProducers({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewQueueProducers.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewQueueProducers(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
