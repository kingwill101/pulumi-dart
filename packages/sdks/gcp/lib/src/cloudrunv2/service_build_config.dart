// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceBuildConfig {
  /// The base image used to build the function.
  final pulumi.Input<String>? baseImage;

  /// Sets whether the function will receive automatic base image updates.
  final pulumi.Input<bool>? enableAutomaticUpdates;

  /// User-provided build-time environment variables for the function.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  final pulumi.Input<String>? functionTarget;

  /// Artifact Registry URI to store the built image.
  final pulumi.Input<String>? imageUri;

  /// (Output)
  /// The Cloud Build name of the latest successful deployment of the function.
  final pulumi.Input<String>? name;

  /// Service account to be used for building the container. The format of this field is `projects/{projectId}/serviceAccounts/{serviceAccountEmail}`.
  final pulumi.Input<String>? serviceAccount;

  /// The Cloud Storage bucket URI where the function source code is located.
  final pulumi.Input<String>? sourceLocation;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  final pulumi.Input<String>? workerPool;

  /// Creates a new [ServiceBuildConfig].
  /// [baseImage] The base image used to build the function.
  /// [enableAutomaticUpdates] Sets whether the function will receive automatic base image updates.
  /// [environmentVariables] User-provided build-time environment variables for the function.
  /// [functionTarget] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  /// [imageUri] Artifact Registry URI to store the built image.
  /// [name] (Output)
  /// [serviceAccount] Service account to be used for building the container. The format of this field is `projects/{projectId}/serviceAccounts/{serviceAccountEmail}`.
  /// [sourceLocation] The Cloud Storage bucket URI where the function source code is located.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  ServiceBuildConfig({
    this.baseImage,
    this.enableAutomaticUpdates,
    this.environmentVariables,
    this.functionTarget,
    this.imageUri,
    this.name,
    this.serviceAccount,
    this.sourceLocation,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseImage': ?baseImage,
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'environmentVariables': ?environmentVariables,
      'functionTarget': ?functionTarget,
      'imageUri': ?imageUri,
      'name': ?name,
      'serviceAccount': ?serviceAccount,
      'sourceLocation': ?sourceLocation,
      'workerPool': ?workerPool,
    };
  }

  factory ServiceBuildConfig.fromMap(Map<String, dynamic> map) {
    return ServiceBuildConfig(
      baseImage: (() {
        final guardedValue = map['baseImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableAutomaticUpdates: (() {
        final guardedValue = map['enableAutomaticUpdates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      functionTarget: (() {
        final guardedValue = map['functionTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageUri: (() {
        final guardedValue = map['imageUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceLocation: (() {
        final guardedValue = map['sourceLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerPool: (() {
        final guardedValue = map['workerPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
