// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'on_error_deployment_type.dart';

/// Deployment on error behavior.
class OnErrorDeployment {
  /// The deployment to be used on error case.
  final pulumi.Input<String>? deploymentName;
  /// The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
  final pulumi.Input<OnErrorDeploymentType>? type;

  /// Creates a new [OnErrorDeployment].
  /// [deploymentName] The deployment to be used on error case.
  /// [type] The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
  OnErrorDeployment({
    this.deploymentName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
      'type': ?pulumi.Input.mapOptionalInputValue<OnErrorDeploymentType, String>(type, (value) => value.wireValue),
    };
  }

  factory OnErrorDeployment.fromMap(Map<String, dynamic> map) {
    return OnErrorDeployment(
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnErrorDeploymentType.fromValue(guardedValue as String)); })(),
    );
  }
}

