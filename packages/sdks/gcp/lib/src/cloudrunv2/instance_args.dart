// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_container.dart';
import 'instance_volume.dart';

/// {@template pulumi_cloudrunv2_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_cloudrunv2_instance_instance_args_doc}
class InstanceArgs {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Arbitrary identifier for the API client.
  final pulumi.Input<String?>? client;
  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String?>? clientVersion;
  /// Holds the single container that defines the unit of execution for this Instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceContainer>> containers;
  /// Disables public resolution of the default URI of this Instance.
  final pulumi.Input<bool?>? defaultUriDisabled;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String?>? encryptionKey;
  /// The action to take if the encryption key is revoked.
  /// Possible values are: `PREVENT_NEW`, `SHUTDOWN`.
  final pulumi.Input<String?>? encryptionKeyRevocationAction;
  /// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String?>? encryptionKeyShutdownDuration;
  /// Provides the ingress settings for this Instance. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible values are: `INGRESS_TRAFFIC_ALL`, `INGRESS_TRAFFIC_INTERNAL_ONLY`, `INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER`.
  final pulumi.Input<String?>? ingress;
  /// Disables IAM permission check for run.routes.invoke for callers of this Instance. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  final pulumi.Input<bool?>? invokerIamDisabled;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String?>? launchStage;
  /// The location of the cloud run instance
  final pulumi.Input<String> location;
  /// Name of the Instance.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Restart policy for the Instance. If not provided, the default is ON_FAILURE.
  /// Possible values are: `ALWAYS`, `ON_FAILURE`, `NEVER`.
  final pulumi.Input<String?>? restartPolicy;
  /// Email address of the IAM service account associated with the Instance. The service account represents the identity of the running Instance, and determines what permissions the instance has.
  final pulumi.Input<String?>? serviceAccount;
  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceVolume>?>? volumes;

  /// Creates a new [InstanceArgs].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [containers] Holds the single container that defines the unit of execution for this Instance.
  /// [defaultUriDisabled] Disables public resolution of the default URI of this Instance.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [encryptionKeyRevocationAction] The action to take if the encryption key is revoked.
  /// [encryptionKeyShutdownDuration] If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// [ingress] Provides the ingress settings for this Instance. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [invokerIamDisabled] Disables IAM permission check for run.routes.invoke for callers of this Instance. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// [location] The location of the cloud run instance
  /// [name] Name of the Instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [restartPolicy] Restart policy for the Instance. If not provided, the default is ON_FAILURE.
  /// [serviceAccount] Email address of the IAM service account associated with the Instance. The service account represents the identity of the running Instance, and determines what permissions the instance has.
  /// [volumes] A list of Volumes to make available to containers.
  const InstanceArgs({
    this.annotations,
    this.client,
    this.clientVersion,
    required this.containers,
    this.defaultUriDisabled,
    this.deletionPolicy,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.ingress,
    this.invokerIamDisabled,
    this.labels,
    this.launchStage,
    required this.location,
    this.name,
    this.project,
    this.restartPolicy,
    this.serviceAccount,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'client': ?client,
      'clientVersion': ?clientVersion,
      'containers': pulumi.Input.mapInputValue<List<InstanceContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<InstanceContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultUriDisabled': ?defaultUriDisabled,
      'deletionPolicy': ?deletionPolicy,
      'encryptionKey': ?encryptionKey,
      'encryptionKeyRevocationAction': ?encryptionKeyRevocationAction,
      'encryptionKeyShutdownDuration': ?encryptionKeyShutdownDuration,
      'ingress': ?ingress,
      'invokerIamDisabled': ?invokerIamDisabled,
      'labels': ?labels,
      'launchStage': ?launchStage,
      'location': location,
      'name': ?name,
      'project': ?project,
      'restartPolicy': ?restartPolicy,
      'serviceAccount': ?serviceAccount,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<InstanceVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<InstanceVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceContainer>(map['containers']!, (value) => InstanceContainer.fromMap((value as Map).cast<String, dynamic>()))),
      defaultUriDisabled: (() { final guardedValue = map['defaultUriDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyRevocationAction: (() { final guardedValue = map['encryptionKeyRevocationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyShutdownDuration: (() { final guardedValue = map['encryptionKeyShutdownDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invokerIamDisabled: (() { final guardedValue = map['invokerIamDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceVolume>(guardedValue, (value) => InstanceVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
