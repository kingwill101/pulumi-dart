// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_batch_application_application_args_doc}
class ApplicationArgs {
  /// The name of the Batch account. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// A value indicating whether packages within the application may be overwritten using the same version string. Defaults to `true`.
  final pulumi.Input<bool>? allowUpdates;
  /// The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  final pulumi.Input<String>? defaultVersion;
  /// The display name for the application.
  final pulumi.Input<String>? displayName;
  /// The name of the application. This must be unique within the account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group that contains the Batch account. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ApplicationArgs].
  /// [accountName] The name of the Batch account. Changing this forces a new resource to be created.
  /// [allowUpdates] A value indicating whether packages within the application may be overwritten using the same version string. Defaults to `true`.
  /// [defaultVersion] The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  /// [displayName] The display name for the application.
  /// [name] The name of the application. This must be unique within the account. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group that contains the Batch account. Changing this forces a new resource to be created.
  ApplicationArgs({
    required this.accountName,
    this.allowUpdates,
    this.defaultVersion,
    this.displayName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'allowUpdates': ?allowUpdates,
      'defaultVersion': ?defaultVersion,
      'displayName': ?displayName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      accountName: (map['accountName'] as String).input(),
      allowUpdates: map['allowUpdates'] == null ? null : (map['allowUpdates']! as bool).input(),
      defaultVersion: map['defaultVersion'] == null ? null : (map['defaultVersion']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

