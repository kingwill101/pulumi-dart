// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_batch_get_application_get_application_args_doc}
class GetApplicationArgs {
  /// The name of the Batch account.
  final pulumi.Input<String> accountName;

  /// The name of the Application.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where this Batch account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationArgs].
  /// [accountName] The name of the Batch account.
  /// [name] The name of the Application.
  /// [resourceGroupName] The name of the Resource Group where this Batch account exists.
  GetApplicationArgs({
    required this.accountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
