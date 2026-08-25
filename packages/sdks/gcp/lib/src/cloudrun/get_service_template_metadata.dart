// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateMetadata {
  /// Annotations is a key value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
  ///
  /// **Note**: The Cloud Run API may add additional annotations that were not provided in your config.
  /// If terraform plan shows a diff where a server-side annotation is added, you can add it to your config
  /// or apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.
  ///
  /// Annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted. Use the following annotation
  /// keys to configure features on a Revision template:
  ///
  /// - 'autoscaling.knative.dev/maxScale' sets the [maximum number of container
  /// instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--max-instances) of the Revision to run.
  /// - 'autoscaling.knative.dev/minScale' sets the [minimum number of container
  /// instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--min-instances) of the Revision to run.
  /// - 'run.googleapis.com/client-name' sets the client name calling the Cloud Run API.
  /// - 'run.googleapis.com/cloudsql-instances' sets the [Cloud SQL
  /// instances](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--add-cloudsql-instances) the Revision connects to.
  /// - 'run.googleapis.com/cpu-throttling' sets whether to throttle the CPU when the container is not actively serving
  /// requests. See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-throttling.
  /// - 'run.googleapis.com/encryption-key-shutdown-hours' sets the number of hours to wait before an automatic shutdown
  /// server after CMEK key revocation is detected.
  /// - 'run.googleapis.com/encryption-key' sets the [CMEK key](https://cloud.google.com/run/docs/securing/using-cmek)
  /// reference to encrypt the container with.
  /// - 'run.googleapis.com/execution-environment' sets the [execution
  /// environment](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--execution-environment)
  /// where the application will run.
  /// - 'run.googleapis.com/post-key-revocation-action-type' sets the
  /// [action type](https://cloud.google.com/sdk/gcloud/reference/run/deploy#--post-key-revocation-action-type)
  /// after CMEK key revocation.
  /// - 'run.googleapis.com/secrets' sets a list of key-value pairs to set as
  /// [secrets](https://cloud.google.com/run/docs/configuring/secrets#yaml).
  /// - 'run.googleapis.com/sessionAffinity' sets whether to enable
  /// [session affinity](https://cloud.google.com/sdk/gcloud/reference/beta/run/deploy#--[no-]session-affinity)
  /// for connections to the Revision.
  /// - 'run.googleapis.com/startup-cpu-boost' sets whether to allocate extra CPU to containers on startup.
  /// See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--[no-]cpu-boost.
  /// - 'run.googleapis.com/network-interfaces' sets [Direct VPC egress](https://cloud.google.com/run/docs/configuring/vpc-direct-vpc#yaml)
  /// for the Revision.
  /// - 'run.googleapis.com/vpc-access-connector' sets a [VPC connector](https://cloud.google.com/run/docs/configuring/connecting-vpc#terraform_1)
  /// for the Revision.
  /// - 'run.googleapis.com/vpc-access-egress' sets the outbound traffic to send through the VPC connector for this resource.
  /// See https://cloud.google.com/sdk/gcloud/reference/run/deploy#--vpc-egress.
  /// - 'run.googleapis.com/gpu-zonal-redundancy-disabled' sets
  /// [GPU zonal redundancy](https://cloud.google.com/run/docs/configuring/services/gpu-zonal-redundancy) for the Revision.
  /// - 'run.googleapis.com/health-check-disabled' disabled health checking containers during deployment.
  final pulumi.Input<Map<String, String>> annotations;
  /// A sequence number representing a specific generation of the desired state.
  final pulumi.Input<int> generation;
  /// Map of string keys and values that can be used to organize and categorize
  /// (scope and select) objects.
  final pulumi.Input<Map<String, String>> labels;
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;
  /// In Cloud Run the namespace must be equal to either the
  /// project ID or project number. It will default to the resource's project.
  final pulumi.Input<String> namespace;
  /// An opaque value that represents the internal version of this object that
  /// can be used by clients to determine when objects have changed. May be used
  /// for optimistic concurrency, change detection, and the watch operation on a
  /// resource or set of resources. They may only be valid for a
  /// particular resource or set of resources.
  final pulumi.Input<String> resourceVersion;
  /// SelfLink is a URL representing this object.
  final pulumi.Input<String> selfLink;
  /// UID is a unique id generated by the server on successful creation of a resource and is not
  /// allowed to change on PUT operations.
  final pulumi.Input<String> uid;

  /// Creates a new [GetServiceTemplateMetadata].
  /// [annotations] Annotations is a key value map stored with a resource that
  /// [generation] A sequence number representing a specific generation of the desired state.
  /// [labels] Map of string keys and values that can be used to organize and categorize
  /// [name] Name must be unique within a Google Cloud project and region.
  /// [namespace] In Cloud Run the namespace must be equal to either the
  /// [resourceVersion] An opaque value that represents the internal version of this object that
  /// [selfLink] SelfLink is a URL representing this object.
  /// [uid] UID is a unique id generated by the server on successful creation of a resource and is not
  const GetServiceTemplateMetadata({
    required this.annotations,
    required this.generation,
    required this.labels,
    required this.name,
    required this.namespace,
    required this.resourceVersion,
    required this.selfLink,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'generation': generation,
      'labels': labels,
      'name': name,
      'namespace': namespace,
      'resourceVersion': resourceVersion,
      'selfLink': selfLink,
      'uid': uid,
    };
  }

  factory GetServiceTemplateMetadata.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateMetadata(
      annotations: pulumi.Input.fromValue((map['annotations'] as Map).cast<String, String>()),
      generation: pulumi.Input.fromValue((map['generation'] as num).toInt()),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resourceVersion: pulumi.Input.fromValue(map['resourceVersion'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
