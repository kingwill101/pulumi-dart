// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentAutoScaleProfile {
  /// Specify the maximum number of NGINX capacity units for this NGINX Deployment.
  ///
  /// &gt; **Note:** If you're using autoscaling with deployments created before v4.0, you may need to use Terraform's `ignore_changes` functionality to ignore changes to the `capacity` field.
  final pulumi.Input<int> maxCapacity;
  /// Specify the minimum number of NGINX capacity units for this NGINX Deployment.
  final pulumi.Input<int> minCapacity;
  /// Specify the name of the autoscaling profile.
  final pulumi.Input<String> name;

  /// Creates a new [DeploymentAutoScaleProfile].
  /// [maxCapacity] Specify the maximum number of NGINX capacity units for this NGINX Deployment.
  /// [minCapacity] Specify the minimum number of NGINX capacity units for this NGINX Deployment.
  /// [name] Specify the name of the autoscaling profile.
  DeploymentAutoScaleProfile({
    required this.maxCapacity,
    required this.minCapacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
      'name': name,
    };
  }

  factory DeploymentAutoScaleProfile.fromMap(Map<String, dynamic> map) {
    return DeploymentAutoScaleProfile(
      maxCapacity: pulumi.Input.fromValue(map['maxCapacity'] as int),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

