// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_registry_repository_get_registry_repository_args_doc}
/// Arguments for getRegistryRepository.
/// {@endtemplate}
/// {@macro pulumi_container_get_registry_repository_get_registry_repository_args_doc}
class GetRegistryRepositoryArgs {
  /// The project ID that this repository is attached to.  If not provided, provider project will be used instead.
  final pulumi.Input<String>? project;
  /// The GCR region to use.  As of this writing, one of `asia`, `eu`, and `us`.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegistryRepositoryArgs].
  /// [project] The project ID that this repository is attached to.  If not provided, provider project will be used instead.
  /// [region] The GCR region to use.  As of this writing, one of `asia`, `eu`, and `us`.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  GetRegistryRepositoryArgs({
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRegistryRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryRepositoryArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

