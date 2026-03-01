// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Python3Package resources.
class Python3PackageState {
  /// The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The URL of the python package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? contentUri;
  /// Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? contentVersion;
  /// Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? hashAlgorithm;
  /// Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? hashValue;
  /// The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Automation Python3 Package.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Python3PackageState].
  /// [automationAccountName] The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created.
  /// [contentUri] The URL of the python package. Changing this forces a new Automation Python3 Package to be created.
  /// [contentVersion] Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created.
  /// [hashAlgorithm] Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created.
  /// [hashValue] Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created.
  /// [name] The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created.
  /// [resourceGroupName] The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Automation Python3 Package.
  Python3PackageState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? contentUri,
    pulumi.Output<String>? contentVersion,
    pulumi.Output<String>? hashAlgorithm,
    pulumi.Output<String>? hashValue,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      contentUri = pulumi.Input.asOptionalInput<String>(contentUri),
      contentVersion = pulumi.Input.asOptionalInput<String>(contentVersion),
      hashAlgorithm = pulumi.Input.asOptionalInput<String>(hashAlgorithm),
      hashValue = pulumi.Input.asOptionalInput<String>(hashValue),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'contentUri': ?contentUri,
      'contentVersion': ?contentVersion,
      'hashAlgorithm': ?hashAlgorithm,
      'hashValue': ?hashValue,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Python3PackageState.fromMap(Map<String, dynamic> map) {
    return Python3PackageState(
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      contentUri: map['contentUri'] == null ? null : pulumi.Output.create<String>(map['contentUri'] as String),
      contentVersion: map['contentVersion'] == null ? null : pulumi.Output.create<String>(map['contentVersion'] as String),
      hashAlgorithm: map['hashAlgorithm'] == null ? null : pulumi.Output.create<String>(map['hashAlgorithm'] as String),
      hashValue: map['hashValue'] == null ? null : pulumi.Output.create<String>(map['hashValue'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

