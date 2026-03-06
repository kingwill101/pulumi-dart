// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_resource_pool.dart';
import 'google_cloud_aiplatform_v1beta1_resource_runtime_spec.dart';

/// {@template pulumi_aiplatform_v1beta1_persistent_resource_args_doc}
/// The set of arguments for PersistentResource.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_persistent_resource_args_doc}
class PersistentResourceArgs {
  /// Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. Resource name of a PersistentResource.
  final pulumi.Input<String>? name;
  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  final pulumi.Input<String>? network;
  /// Required. The ID to use for the PersistentResource, which become the final component of the PersistentResource's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  final pulumi.Input<String> persistentResourceId;
  final pulumi.Input<String>? project;
  /// Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final pulumi.Input<List<String>>? reservedIpRanges;
  /// The spec of the pools of different resources.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1ResourcePool>> resourcePools;
  /// Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ResourceRuntimeSpec>? resourceRuntimeSpec;

  /// Creates a new [PersistentResourceArgs].
  /// [displayName] Optional. The display name of the PersistentResource. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for a PersistentResource. If set, this PersistentResource and all sub-resources of this PersistentResource will be secured by this key.
  /// [labels] Optional. The labels with user-defined metadata to organize PersistentResource. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [name] Immutable. Resource name of a PersistentResource.
  /// [network] Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to peered with Vertex AI to host the persistent resources. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the resources aren't peered with any network.
  /// [persistentResourceId] Required. The ID to use for the PersistentResource, which become the final component of the PersistentResource's resource name. The maximum length is 63 characters, and valid characters are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
  /// [project] Optional.
  /// [reservedIpRanges] Optional. A list of names for the reserved IP ranges under the VPC network that can be used for this persistent resource. If set, we will deploy the persistent resource within the provided IP ranges. Otherwise, the persistent resource is deployed to any IP ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  /// [resourcePools] The spec of the pools of different resources.
  /// [resourceRuntimeSpec] Optional. Persistent Resource runtime spec. For example, used for Ray cluster configuration.
  const PersistentResourceArgs({
    this.displayName,
    this.encryptionSpec,
    this.labels,
    this.location,
    this.name,
    this.network,
    required this.persistentResourceId,
    this.project,
    this.reservedIpRanges,
    required this.resourcePools,
    this.resourceRuntimeSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'persistentResourceId': persistentResourceId,
      'project': ?project,
      'reservedIpRanges': ?reservedIpRanges,
      'resourcePools': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1ResourcePool>, List<Map<String, dynamic>>>(resourcePools, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1ResourcePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRuntimeSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ResourceRuntimeSpec, Map<String, dynamic>>(resourceRuntimeSpec, (value) => value.toMap()),
    };
  }

  factory PersistentResourceArgs.fromMap(Map<String, dynamic> map) {
    return PersistentResourceArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistentResourceId: pulumi.Input.fromValue(map['persistentResourceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourcePools: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1ResourcePool>(map['resourcePools']!, (value) => GoogleCloudAiplatformV1beta1ResourcePool.fromMap((value as Map).cast<String, dynamic>()))),
      resourceRuntimeSpec: (() { final guardedValue = map['resourceRuntimeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ResourceRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

