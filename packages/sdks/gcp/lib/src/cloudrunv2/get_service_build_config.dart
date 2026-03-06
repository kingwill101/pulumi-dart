// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceBuildConfig {
  /// The base image used to build the function.
  final pulumi.Input<String> baseImage;
  /// Sets whether the function will receive automatic base image updates.
  final pulumi.Input<bool> enableAutomaticUpdates;
  /// User-provided build-time environment variables for the function.
  final pulumi.Input<Map<String, String>> environmentVariables;
  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  final pulumi.Input<String> functionTarget;
  /// Artifact Registry URI to store the built image.
  final pulumi.Input<String> imageUri;
  /// The name of the Cloud Run v2 Service.
  final pulumi.Input<String> name;
  /// Service account to be used for building the container. The format of this field is 'projects/{projectId}/serviceAccounts/{serviceAccountEmail}'.
  final pulumi.Input<String> serviceAccount;
  /// The Cloud Storage bucket URI where the function source code is located.
  final pulumi.Input<String> sourceLocation;
  /// Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is 'projects/{project}/locations/{region}/workerPools/{workerPool}' where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  final pulumi.Input<String> workerPool;

  /// Creates a new [GetServiceBuildConfig].
  /// [baseImage] The base image used to build the function.
  /// [enableAutomaticUpdates] Sets whether the function will receive automatic base image updates.
  /// [environmentVariables] User-provided build-time environment variables for the function.
  /// [functionTarget] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function".
  /// [imageUri] Artifact Registry URI to store the built image.
  /// [name] The name of the Cloud Run v2 Service.
  /// [serviceAccount] Service account to be used for building the container. The format of this field is 'projects/{projectId}/serviceAccounts/{serviceAccountEmail}'.
  /// [sourceLocation] The Cloud Storage bucket URI where the function source code is located.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the Cloud Run function. The format of this field is 'projects/{project}/locations/{region}/workerPools/{workerPool}' where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool.
  const GetServiceBuildConfig({
    required this.baseImage,
    required this.enableAutomaticUpdates,
    required this.environmentVariables,
    required this.functionTarget,
    required this.imageUri,
    required this.name,
    required this.serviceAccount,
    required this.sourceLocation,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseImage': baseImage,
      'enableAutomaticUpdates': enableAutomaticUpdates,
      'environmentVariables': environmentVariables,
      'functionTarget': functionTarget,
      'imageUri': imageUri,
      'name': name,
      'serviceAccount': serviceAccount,
      'sourceLocation': sourceLocation,
      'workerPool': workerPool,
    };
  }

  factory GetServiceBuildConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceBuildConfig(
      baseImage: pulumi.Input.fromValue(map['baseImage'] as String),
      enableAutomaticUpdates: pulumi.Input.fromValue(map['enableAutomaticUpdates'] as bool),
      environmentVariables: pulumi.Input.fromValue((map['environmentVariables'] as Map).cast<String, String>()),
      functionTarget: pulumi.Input.fromValue(map['functionTarget'] as String),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      sourceLocation: pulumi.Input.fromValue(map['sourceLocation'] as String),
      workerPool: pulumi.Input.fromValue(map['workerPool'] as String),
    );
  }
}

