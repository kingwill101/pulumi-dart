// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_provenance_response_cloudfunctions_v2beta.dart';
import 'source_response_cloudfunctions_v2beta.dart';

/// Describes the Build step of the function that builds a container from the given source.
class BuildConfigResponseCloudfunctionsV2beta {
  /// The Cloud Build name of the latest successful deployment of the function.
  final pulumi.Input<String> build;
  /// Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  final pulumi.Input<String> dockerRegistry;
  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. If unspecified, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  final pulumi.Input<String> dockerRepository;
  /// The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in `source_location`.
  final pulumi.Input<String> entryPoint;
  /// User-provided build-time environment variables for the function
  final pulumi.Input<Map<String, String>> environmentVariables;
  /// The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  final pulumi.Input<String> runtime;
  /// The location of the function source code.
  final pulumi.Input<SourceResponseCloudfunctionsV2beta> source;
  /// A permanent fixed identifier for source.
  final pulumi.Input<SourceProvenanceResponseCloudfunctionsV2beta> sourceProvenance;
  /// An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  final pulumi.Input<String> sourceToken;
  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (service-@gcf-admin-robot.iam.gserviceaccount.com) must be granted the role Cloud Build Custom Workers Builder (roles/cloudbuild.customworkers.builder) in the project.
  final pulumi.Input<String> workerPool;

  /// Creates a new [BuildConfigResponseCloudfunctionsV2beta].
  /// [build] The Cloud Build name of the latest successful deployment of the function.
  /// [dockerRegistry] Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  /// [dockerRepository] User managed repository created in Artifact Registry optionally with a customer managed encryption key. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. If unspecified, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  /// [entryPoint] The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in `source_location`.
  /// [environmentVariables] User-provided build-time environment variables for the function
  /// [runtime] The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  /// [source] The location of the function source code.
  /// [sourceProvenance] A permanent fixed identifier for source.
  /// [sourceToken] An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (service-@gcf-admin-robot.iam.gserviceaccount.com) must be granted the role Cloud Build Custom Workers Builder (roles/cloudbuild.customworkers.builder) in the project.
  const BuildConfigResponseCloudfunctionsV2beta({
    required this.build,
    required this.dockerRegistry,
    required this.dockerRepository,
    required this.entryPoint,
    required this.environmentVariables,
    required this.runtime,
    required this.source,
    required this.sourceProvenance,
    required this.sourceToken,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': build,
      'dockerRegistry': dockerRegistry,
      'dockerRepository': dockerRepository,
      'entryPoint': entryPoint,
      'environmentVariables': environmentVariables,
      'runtime': runtime,
      'source': pulumi.Input.mapInputValue<SourceResponseCloudfunctionsV2beta, Map<String, dynamic>>(source, (value) => value.toMap()),
      'sourceProvenance': pulumi.Input.mapInputValue<SourceProvenanceResponseCloudfunctionsV2beta, Map<String, dynamic>>(sourceProvenance, (value) => value.toMap()),
      'sourceToken': sourceToken,
      'workerPool': workerPool,
    };
  }

  factory BuildConfigResponseCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return BuildConfigResponseCloudfunctionsV2beta(
      build: pulumi.Input.fromValue(map['build'] as String),
      dockerRegistry: pulumi.Input.fromValue(map['dockerRegistry'] as String),
      dockerRepository: pulumi.Input.fromValue(map['dockerRepository'] as String),
      entryPoint: pulumi.Input.fromValue(map['entryPoint'] as String),
      environmentVariables: pulumi.Input.fromValue((map['environmentVariables'] as Map).cast<String, String>()),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
      source: pulumi.Input.fromValue(SourceResponseCloudfunctionsV2beta.fromMap((map['source']! as Map).cast<String, dynamic>())),
      sourceProvenance: pulumi.Input.fromValue(SourceProvenanceResponseCloudfunctionsV2beta.fromMap((map['sourceProvenance']! as Map).cast<String, dynamic>())),
      sourceToken: pulumi.Input.fromValue(map['sourceToken'] as String),
      workerPool: pulumi.Input.fromValue(map['workerPool'] as String),
    );
  }
}
