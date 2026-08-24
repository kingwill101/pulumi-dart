// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionQueueProducers {
  /// Name of the Queue.
  final pulumi.Input<String> name;

  /// Creates a new [PagesProjectDeploymentConfigsProductionQueueProducers].
  /// [name] Name of the Queue.
  const PagesProjectDeploymentConfigsProductionQueueProducers({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PagesProjectDeploymentConfigsProductionQueueProducers.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionQueueProducers(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
