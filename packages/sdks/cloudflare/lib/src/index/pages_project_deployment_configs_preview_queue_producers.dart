// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewQueueProducers {
  /// Name of the Queue.
  final pulumi.Input<String> name;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewQueueProducers].
  /// [name] Name of the Queue.
  const PagesProjectDeploymentConfigsPreviewQueueProducers({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewQueueProducers.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewQueueProducers(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
