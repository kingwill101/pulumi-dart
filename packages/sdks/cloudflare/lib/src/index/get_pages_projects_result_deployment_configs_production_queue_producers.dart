// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionQueueProducers {
  /// Name of the Queue.
  final pulumi.Input<String> name;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionQueueProducers].
  /// [name] Name of the Queue.
  const GetPagesProjectsResultDeploymentConfigsProductionQueueProducers({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionQueueProducers.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionQueueProducers(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
