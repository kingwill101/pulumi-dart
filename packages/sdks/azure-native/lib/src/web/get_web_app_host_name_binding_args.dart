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
    required pulumi.Output<String> hostName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      hostName = pulumi.Input.asInput<String>(hostName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppHostNameBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppHostNameBindingArgs(
      hostName: pulumi.Output.create<String>(map['hostName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

