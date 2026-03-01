// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_linked_backend_args_doc}
/// The set of arguments for StaticSiteLinkedBackend.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_linked_backend_args_doc}
class StaticSiteLinkedBackendArgs {
  /// The resource id of the backend linked to the static site
  final pulumi.Input<String>? backendResourceId;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the backend to link to the static site
  final pulumi.Input<String>? linkedBackendName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The region of the backend linked to the static site
  final pulumi.Input<String> region;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [StaticSiteLinkedBackendArgs].
  /// [backendResourceId] The resource id of the backend linked to the static site
  /// [kind] Kind of resource.
  /// [linkedBackendName] Name of the backend to link to the static site
  /// [name] Name of the static site
  /// [region] The region of the backend linked to the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  StaticSiteLinkedBackendArgs({
    pulumi.Output<String>? backendResourceId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? linkedBackendName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> region,
    required pulumi.Output<String> resourceGroupName,
  }) :
      backendResourceId = pulumi.Input.asOptionalInput<String>(backendResourceId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      linkedBackendName = pulumi.Input.asOptionalInput<String>(linkedBackendName),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asInput<String>(region),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendResourceId': ?backendResourceId,
      'kind': ?kind,
      'linkedBackendName': ?linkedBackendName,
      'name': name,
      'region': region,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory StaticSiteLinkedBackendArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteLinkedBackendArgs(
      backendResourceId: map['backendResourceId'] == null ? null : pulumi.Output.create<String>(map['backendResourceId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      linkedBackendName: map['linkedBackendName'] == null ? null : pulumi.Output.create<String>(map['linkedBackendName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

