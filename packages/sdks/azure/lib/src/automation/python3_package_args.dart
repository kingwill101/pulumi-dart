// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_python3_package_python3_package_args_doc}
/// The set of arguments for Python3Package.
/// {@endtemplate}
/// {@macro pulumi_automation_python3_package_python3_package_args_doc}
class Python3PackageArgs {
  /// The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The URL of the python package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String> contentUri;
  /// Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String?>? contentVersion;
  /// Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String?>? hashAlgorithm;
  /// Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String?>? hashValue;
  /// The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Automation Python3 Package.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [Python3PackageArgs].
  /// [automationAccountName] The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created.
  /// [contentUri] The URL of the python package. Changing this forces a new Automation Python3 Package to be created.
  /// [contentVersion] Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created.
  /// [hashAlgorithm] Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created.
  /// [hashValue] Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created.
  /// [name] The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created.
  /// [resourceGroupName] The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Automation Python3 Package.
  const Python3PackageArgs({
    required this.automationAccountName,
    required this.contentUri,
    this.contentVersion,
    this.hashAlgorithm,
    this.hashValue,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentUri': contentUri,
      'contentVersion': ?contentVersion,
      'hashAlgorithm': ?hashAlgorithm,
      'hashValue': ?hashValue,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Python3PackageArgs.fromMap(Map<String, dynamic> map) {
    return Python3PackageArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      contentUri: pulumi.Input.fromValue(map['contentUri'] as String),
      contentVersion: (() { final guardedValue = map['contentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashAlgorithm: (() { final guardedValue = map['hashAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashValue: (() { final guardedValue = map['hashValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
