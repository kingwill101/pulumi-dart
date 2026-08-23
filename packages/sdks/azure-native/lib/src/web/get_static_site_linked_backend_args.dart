// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_linked_backend_args_doc}
/// Arguments for getStaticSiteLinkedBackend.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_linked_backend_args_doc}
class GetStaticSiteLinkedBackendArgs {
  /// Name of the linked backend that should be retrieved
  final pulumi.Input<String> linkedBackendName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteLinkedBackendArgs].
  /// [linkedBackendName] Name of the linked backend that should be retrieved
  /// [name] Name of the static site
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetStaticSiteLinkedBackendArgs({
    required this.linkedBackendName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedBackendName': linkedBackendName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteLinkedBackendArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteLinkedBackendArgs(
      linkedBackendName: pulumi.Input.fromValue(map['linkedBackendName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
