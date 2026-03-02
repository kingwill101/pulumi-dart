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
    this.backendResourceId,
    this.kind,
    this.linkedBackendName,
    required this.name,
    required this.region,
    required this.resourceGroupName,
  });

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
      backendResourceId: map['backendResourceId'] == null ? null : (map['backendResourceId']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      linkedBackendName: map['linkedBackendName'] == null ? null : (map['linkedBackendName']! as String).input(),
      name: (map['name'] as String).input(),
      region: (map['region'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

