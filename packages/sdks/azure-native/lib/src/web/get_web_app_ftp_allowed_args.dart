// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_ftp_allowed_args_doc}
/// Arguments for getWebAppFtpAllowed.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_ftp_allowed_args_doc}
class GetWebAppFtpAllowedArgs {
  /// Name of the app.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppFtpAllowedArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppFtpAllowedArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppFtpAllowedArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppFtpAllowedArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
