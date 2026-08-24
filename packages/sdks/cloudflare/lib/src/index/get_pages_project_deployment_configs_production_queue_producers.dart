// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionQueueProducers {
  /// Name of the Queue.
  final pulumi.Input<String> name;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionQueueProducers].
  /// [name] Name of the Queue.
  const GetPagesProjectDeploymentConfigsProductionQueueProducers({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionQueueProducers.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionQueueProducers(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
