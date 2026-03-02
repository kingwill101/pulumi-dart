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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteLinkedBackendArgs].
  /// [linkedBackendName] Name of the linked backend that should be retrieved
  /// [name] Name of the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetStaticSiteLinkedBackendArgs({
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
      linkedBackendName: (map['linkedBackendName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

