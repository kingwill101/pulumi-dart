// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_ftp_allowed_args_doc}
/// The set of arguments for WebAppFtpAllowed.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_ftp_allowed_args_doc}
class WebAppFtpAllowedArgs {
  /// <code>true</code> to allow access to a publishing method; otherwise, <code>false</code>.
  final pulumi.Input<bool> allow;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppFtpAllowedArgs].
  /// [allow] <code>true</code> to allow access to a publishing method; otherwise, <code>false</code>.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppFtpAllowedArgs({
    required pulumi.Output<bool> allow,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      allow = pulumi.Input.asInput<bool>(allow),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppFtpAllowedArgs.fromMap(Map<String, dynamic> map) {
    return WebAppFtpAllowedArgs(
      allow: pulumi.Output.create<bool>(map['allow'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

