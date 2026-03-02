// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_node_pool_config.dart';

/// {@template pulumi_gkeonprem_bare_metal_node_pool_bare_metal_node_pool_args_doc}
/// The set of arguments for BareMetalNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_bare_metal_node_pool_bare_metal_node_pool_args_doc}
class BareMetalNodePoolArgs {
  /// Annotations on the Bare Metal Node Pool.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The cluster this node pool belongs to.
  final pulumi.Input<String> bareMetalCluster;
  /// The display name for the Bare Metal Node Pool.
  final pulumi.Input<String>? displayName;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The bare metal node pool name.
  final pulumi.Input<String>? name;
  /// Node pool configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalNodePoolNodePoolConfig> nodePoolConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BareMetalNodePoolArgs].
  /// [annotations] Annotations on the Bare Metal Node Pool.
  /// [bareMetalCluster] The cluster this node pool belongs to.
  /// [displayName] The display name for the Bare Metal Node Pool.
  /// [location] The location of the resource.
  /// [name] The bare metal node pool name.
  /// [nodePoolConfig] Node pool configuration.
  /// [project] The ID of the project in which the resource belongs.
  BareMetalNodePoolArgs({
    this.annotations,
    required this.bareMetalCluster,
    this.displayName,
    required this.location,
    this.name,
    required this.nodePoolConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bareMetalCluster': bareMetalCluster,
      'displayName': ?displayName,
      'location': location,
      'name': ?name,
      'nodePoolConfig': pulumi.Input.mapInputValue<BareMetalNodePoolNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory BareMetalNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      bareMetalCluster: (map['bareMetalCluster'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodePoolConfig: (BareMetalNodePoolNodePoolConfig.fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

