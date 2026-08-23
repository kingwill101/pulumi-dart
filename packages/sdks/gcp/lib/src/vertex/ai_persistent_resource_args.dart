// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_persistent_resource_encryption_spec.dart';
import 'ai_persistent_resource_psc_interface_config.dart';
import 'ai_persistent_resource_resource_pool.dart';
import 'ai_persistent_resource_resource_runtime_spec.dart';

/// {@template pulumi_vertex_ai_persistent_resource_ai_persistent_resource_args_doc}
/// The set of arguments for AiPersistentResource.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_persistent_resource_ai_persistent_resource_args_doc}
class AiPersistentResourceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the PersistentResource.
  /// The name can be up to 128 characters long and can consist of any UTF-8
  /// characters.
  final pulumi.Input<String>? displayName;
  /// Represents a customer-managed encryption key specification that can be
  /// applied to a Vertex AI resource.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceEncryptionSpec>? encryptionSpec;
  /// The labels with user-defined metadata to organize PersistentResource.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the PersistentResource. eg us-central1
  final pulumi.Input<String>? location;
  /// The ID to use for the PersistentResource, which become the final component
  /// of the PersistentResource's resource name.
  /// The maximum length is 63 characters, and valid characters
  /// are `/^a-z?$/`.
  final pulumi.Input<String>? name;
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
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration for PSC-I.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourcePscInterfaceConfig>? pscInterfaceConfig;
  /// A list of names for the reserved IP ranges under the VPC network
  /// that can be used for this persistent resource.
  /// If set, we will deploy the persistent resource within the provided IP
  /// ranges. Otherwise, the persistent resource is deployed to any IP
  /// ranges under the provided VPC network.
  /// Example: ['vertex-ai-ip-range'].
  final pulumi.Input<List<String>>? reservedIpRanges;
  /// The spec of the pools of different resources.
  /// Structure is documented below.
  final pulumi.Input<List<AiPersistentResourceResourcePool>> resourcePools;
  /// Configuration for the runtime on a PersistentResource instance.
  /// Structure is documented below.
  final pulumi.Input<AiPersistentResourceResourceRuntimeSpec>? resourceRuntimeSpec;

  /// Creates a new [AiPersistentResourceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the PersistentResource.
  /// [encryptionSpec] Represents a customer-managed encryption key specification that can be
  /// [labels] The labels with user-defined metadata to organize PersistentResource.
  /// [location] The location of the PersistentResource. eg us-central1
  /// [name] The ID to use for the PersistentResource, which become the final component
  /// [network] The full name of the Compute Engine
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] Configuration for PSC-I.
  /// [reservedIpRanges] A list of names for the reserved IP ranges under the VPC network
  /// [resourcePools] The spec of the pools of different resources.
  /// [resourceRuntimeSpec] Configuration for the runtime on a PersistentResource instance.
  const AiPersistentResourceArgs({
    this.deletionPolicy,
    this.displayName,
    this.encryptionSpec,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.project,
    this.pscInterfaceConfig,
    this.reservedIpRanges,
    required this.resourcePools,
    this.resourceRuntimeSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourceEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourcePscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'reservedIpRanges': ?reservedIpRanges,
      'resourcePools': pulumi.Input.mapInputValue<List<AiPersistentResourceResourcePool>, List<Map<String, dynamic>>>(resourcePools, (value) => pulumi.Input.encodeList<AiPersistentResourceResourcePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRuntimeSpec': ?pulumi.Input.mapOptionalInputValue<AiPersistentResourceResourceRuntimeSpec, Map<String, dynamic>>(resourceRuntimeSpec, (value) => value.toMap()),
    };
  }

  factory AiPersistentResourceArgs.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourceEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourcePscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reservedIpRanges: (() { final guardedValue = map['reservedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourcePools: pulumi.Input.fromValue(pulumi.Input.decodeList<AiPersistentResourceResourcePool>(map['resourcePools']!, (value) => AiPersistentResourceResourcePool.fromMap((value as Map).cast<String, dynamic>()))),
      resourceRuntimeSpec: (() { final guardedValue = map['resourceRuntimeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiPersistentResourceResourceRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
