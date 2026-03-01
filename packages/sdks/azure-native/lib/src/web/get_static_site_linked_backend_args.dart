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
    required pulumi.Output<String> linkedBackendName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      linkedBackendName = pulumi.Input.asInput<String>(linkedBackendName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedBackendName': linkedBackendName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteLinkedBackendArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteLinkedBackendArgs(
      linkedBackendName: pulumi.Output.create<String>(map['linkedBackendName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

