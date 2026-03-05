// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aadb2c_get_directory_get_directory_args_doc}
/// Arguments for getDirectory.
/// {@endtemplate}
/// {@macro pulumi_aadb2c_get_directory_get_directory_args_doc}
class GetDirectoryArgs {
  /// Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix.
  final pulumi.Input<String> domainName;
  /// The name of the Resource Group where the AAD B2C Directory exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDirectoryArgs].
  /// [domainName] Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix.
  /// [resourceGroupName] The name of the Resource Group where the AAD B2C Directory exists.
  GetDirectoryArgs({
    required this.domainName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return GetDirectoryArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

