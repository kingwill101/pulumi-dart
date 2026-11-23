// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_deployment_metadata_component_output_parameter.dart';
import 'application_deployment_metadata_error.dart';

class ApplicationDeploymentMetadata {
  /// (Output)
  /// The Cloud Build instance UUID associated with the deployment.
  final pulumi.Input<String?>? build;
  /// (Output)
  /// The component output parameters of the deployment.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationDeploymentMetadataComponentOutputParameter>?>? componentOutputParameters;
  /// (Output)
  /// The error associated with the deployment.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationDeploymentMetadataError>?>? errors;
  /// (Output)
  /// The number of deployment retries attempted.
  final pulumi.Input<int?>? retryAttempts;
  /// (Output)
  /// The revision of the deployment associated with the application.
  final pulumi.Input<String?>? revision;
  /// (Output)
  /// The Cloud Build worker pool used to deploy the application.
  final pulumi.Input<String?>? workerPool;

  /// Creates a new [ApplicationDeploymentMetadata].
  /// [build] (Output)
  /// [componentOutputParameters] (Output)
  /// [errors] (Output)
  /// [retryAttempts] (Output)
  /// [revision] (Output)
  /// [workerPool] (Output)
  const ApplicationDeploymentMetadata({
    this.build,
    this.componentOutputParameters,
    this.errors,
    this.retryAttempts,
    this.revision,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': ?build,
      'componentOutputParameters': ?pulumi.Input.mapOptionalInputValue<List<ApplicationDeploymentMetadataComponentOutputParameter>, List<Map<String, dynamic>>>(componentOutputParameters, (value) => pulumi.Input.encodeList<ApplicationDeploymentMetadataComponentOutputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ApplicationDeploymentMetadataError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ApplicationDeploymentMetadataError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retryAttempts': ?retryAttempts,
      'revision': ?revision,
      'workerPool': ?workerPool,
    };
  }

  factory ApplicationDeploymentMetadata.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentMetadata(
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      componentOutputParameters: (() { final guardedValue = map['componentOutputParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationDeploymentMetadataComponentOutputParameter>(guardedValue, (value) => ApplicationDeploymentMetadataComponentOutputParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationDeploymentMetadataError>(guardedValue, (value) => ApplicationDeploymentMetadataError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      retryAttempts: (() { final guardedValue = map['retryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
