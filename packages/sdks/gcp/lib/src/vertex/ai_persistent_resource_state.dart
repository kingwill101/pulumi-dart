// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_persistent_resource_encryption_spec.dart';
import 'ai_persistent_resource_error.dart';
import 'ai_persistent_resource_psc_interface_config.dart';
import 'ai_persistent_resource_resource_pool.dart';
import 'ai_persistent_resource_resource_runtime.dart';
import 'ai_persistent_resource_resource_runtime_spec.dart';

/// Input properties used for looking up and filtering AiPersistentResource resources.
class AiPersistentResourceState {
  /// Time when the PersistentResource was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the PersistentResource.
  /// The name can be up to 128 characters long and can consist of any UTF-8
  /// characters.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Represents a customer-managed encryption key specification that can be
  /// applied to a Vertex AI resource.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceEncryptionSpec?>? encryptionSpec;
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<List<AiPersistentResourceError>?>? errors;
  /// The labels with user-defined metadata to organize PersistentResource.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the PersistentResource. eg us-central1
  final pulumi.Input<String?>? location;
  /// The ID to use for the PersistentResource, which become the final component
  /// of the PersistentResource's resource name.
  /// The maximum length is 63 characters, and valid characters
  /// are `/^a-z?$/`.
  final pulumi.Input<String?>? name;
  /// The full name of the Compute Engine
  /// [network](https://www.terraform.io/compute/docs/networks-and-firewalls#networks) to peered with
  /// Vertex AI to host the persistent resources.
  /// For example, `projects/12345/global/networks/myVPC`.
  /// [Format](https://www.terraform.io/compute/docs/reference/rest/v1/networks/insert)
  /// is of the form `projects/{project}/global/networks/{network}`.
  /// Where {project} is a project number, as in `12345`, and {network} is a
  /// network name.
  /// To specify this field, you must have already [configured VPC Network
  /// Peering for Vertex
  /// AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering).
  /// If this field is left unspecified, the resources aren't peered with any
  /// network.
  final pulumi.Input<String?>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Configuration for PSC-I.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourcePscInterfaceConfig?>? pscInterfaceConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// A list of names for the reserved IP ranges under the VPC network
  /// that can be used for this persistent resource.
  /// If set, we will deploy the persistent resource within the provided IP
  /// ranges. Otherwise, the persistent resource is deployed to any IP
  /// ranges under the provided VPC network.
  /// Example: ['vertex-ai-ip-range'].
  final pulumi.Input<List<String>?>? reservedIpRanges;
  /// The spec of the pools of different resources.
  /// Structure is documented below.
  final pulumi.Input<List<AiPersistentResourceResourcePool>?>? resourcePools;
  /// Configuration for the runtime on a PersistentResource instance.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceResourceRuntimeSpec?>? resourceRuntimeSpec;
  /// Persistent Cluster runtime information as output
  /// Structure is documented below.
  final pulumi.Input<List<AiPersistentResourceResourceRuntime>?>? resourceRuntimes;
  /// Reserved for future use.
  final pulumi.Input<bool?>? satisfiesPzi;
  /// Reserved for future use.
  final pulumi.Input<bool?>? satisfiesPzs;
  /// Time when the PersistentResource for the first time entered the `RUNNING`
  /// state.
  final pulumi.Input<String?>? startTime;
  /// The detailed state of a PersistentResource.
  /// Possible values:
  /// PROVISIONING
  /// RUNNING
  /// STOPPING
  /// ERROR
  /// REBOOTING
  /// UPDATING
  final pulumi.Input<String?>? state;
  /// Time when the PersistentResource was most recently updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiPersistentResourceState].
  /// [createTime] Time when the PersistentResource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the PersistentResource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Represents a customer-managed encryption key specification that can be
  /// [errors] The `Status` type defines a logical error model that is suitable for
  /// [labels] The labels with user-defined metadata to organize PersistentResource.
  /// [location] The location of the PersistentResource. eg us-central1
  /// [name] The ID to use for the PersistentResource, which become the final component
  /// [network] The full name of the Compute Engine
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] Configuration for PSC-I.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reservedIpRanges] A list of names for the reserved IP ranges under the VPC network
  /// [resourcePools] The spec of the pools of different resources.
  /// [resourceRuntimeSpec] Configuration for the runtime on a PersistentResource instance.
  /// [resourceRuntimes] Persistent Cluster runtime information as output
  /// [satisfiesPzi] Reserved for future use.
  /// [satisfiesPzs] Reserved for future use.
  /// [startTime] Time when the PersistentResource for the first time entered the `RUNNING`
  /// [state] The detailed state of a PersistentResource.
  /// [updateTime] Time when the PersistentResource was most recently updated.
  const AiPersistentResourceState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.errors,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.project,
    this.pscInterfaceConfig,
    this.pulumiLabels,
    this.reservedIpRanges,
    this.resourcePools,
    this.resourceRuntimeSpec,
    this.resourceRuntimes,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.startTime,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourceEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiPersistentResourceError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiPersistentResourceError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourcePscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'reservedIpRanges': ?reservedIpRanges,
      'resourcePools': ?pulumi.Input.mapOptionalInputValue<List<AiPersistentResourceResourcePool>, List<Map<String, dynamic>>>(resourcePools, (value) => pulumi.Input.encodeList<AiPersistentResourceResourcePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRuntimeSpec': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourceResourceRuntimeSpec, Map<String, dynamic>>(resourceRuntimeSpec, (value) => value.toMap()),
      'resourceRuntimes': ?pulumi.Input.mapOptionalInputValue<List<AiPersistentResourceResourceRuntime>, List<Map<String, dynamic>>>(resourceRuntimes, (value) => pulumi.Input.encodeList<AiPersistentResourceResourceRuntime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'startTime': ?startTime,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AiPersistentResourceState.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourceEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPersistentResourceError>(guardedValue, (value) => AiPersistentResourceError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourcePscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourcePools: (() { final guardedValue = map['resourcePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPersistentResourceResourcePool>(guardedValue, (value) => AiPersistentResourceResourcePool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceRuntimeSpec: (() { final guardedValue = map['resourceRuntimeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourceResourceRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceRuntimes: (() { final guardedValue = map['resourceRuntimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiPersistentResourceResourceRuntime>(guardedValue, (value) => AiPersistentResourceResourceRuntime.fromMap((value as Map).cast<String, dynamic>()))); })(),
      satisfiesPzi: (() { final guardedValue = map['satisfiesPzi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
