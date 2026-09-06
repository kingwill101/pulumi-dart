// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_linked_backend_args_doc}
/// The set of arguments for StaticSiteLinkedBackend.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_linked_backend_args_doc}
class StaticSiteLinkedBackendArgs {
  /// The resource id of the backend linked to the static site
  final pulumi.Input<String?>? backendResourceId;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the linked backend that should be retrieved
  final pulumi.Input<String?>? linkedBackendName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The region of the backend linked to the static site
  final pulumi.Input<String> region;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [StaticSiteLinkedBackendArgs].
  /// [backendResourceId] The resource id of the backend linked to the static site
  /// [kind] Kind of resource.
  /// [linkedBackendName] Name of the linked backend that should be retrieved
  /// [name] Name of the static site
  /// [region] The region of the backend linked to the static site
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const StaticSiteLinkedBackendArgs({
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
      backendResourceId: (() { final guardedValue = map['backendResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedBackendName: (() { final guardedValue = map['linkedBackendName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
