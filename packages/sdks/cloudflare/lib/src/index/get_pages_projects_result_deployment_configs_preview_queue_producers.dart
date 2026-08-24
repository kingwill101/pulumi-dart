// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers {
  /// Name of the Queue.
  final pulumi.Input<String> name;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers].
  /// [name] Name of the Queue.
  const GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
