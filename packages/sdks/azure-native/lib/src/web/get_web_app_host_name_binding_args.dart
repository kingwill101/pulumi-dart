// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_host_name_binding_args_doc}
/// Arguments for getWebAppHostNameBinding.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_host_name_binding_args_doc}
class GetWebAppHostNameBindingArgs {
  /// Hostname in the hostname binding.
  final pulumi.Input<String> hostName;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppHostNameBindingArgs].
  /// [hostName] Hostname in the hostname binding.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppHostNameBindingArgs({
    required this.hostName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppHostNameBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppHostNameBindingArgs(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

