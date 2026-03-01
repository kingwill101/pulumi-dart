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
    required pulumi.Output<String> accountName,
    pulumi.Output<bool>? allowUpdates,
    pulumi.Output<String>? defaultVersion,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      allowUpdates = pulumi.Input.asOptionalInput<bool>(allowUpdates),
      defaultVersion = pulumi.Input.asOptionalInput<String>(defaultVersion),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      allowUpdates: map['allowUpdates'] == null ? null : pulumi.Output.create<bool>(map['allowUpdates'] as bool),
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<String>(map['defaultVersion'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

