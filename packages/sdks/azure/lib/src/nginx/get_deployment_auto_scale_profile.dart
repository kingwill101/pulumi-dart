// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentAutoScaleProfile {
  /// The maximum number of NGINX capacity units for this NGINX Deployment.
  final pulumi.Input<int> maxCapacity;
  /// The minimum number of NGINX capacity units for this NGINX Deployment.
  final pulumi.Input<int> minCapacity;
  /// The name of this NGINX Deployment.
  final pulumi.Input<String> name;

  /// Creates a new [GetDeploymentAutoScaleProfile].
  /// [maxCapacity] The maximum number of NGINX capacity units for this NGINX Deployment.
  /// [minCapacity] The minimum number of NGINX capacity units for this NGINX Deployment.
  /// [name] The name of this NGINX Deployment.
  GetDeploymentAutoScaleProfile({
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

  factory GetDeploymentAutoScaleProfile.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAutoScaleProfile(
      maxCapacity: pulumi.Input.fromValue(map['maxCapacity'] as int),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

