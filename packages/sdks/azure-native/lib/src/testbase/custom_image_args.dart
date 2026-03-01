// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_custom_image_args_doc}
/// The set of arguments for CustomImage.
/// {@endtemplate}
/// {@macro pulumi_testbase_custom_image_args_doc}
class CustomImageArgs {
  /// The resource name of the test base custom image.
  final pulumi.Input<String>? customImageName;
  /// Image definition name.
  final pulumi.Input<String> definitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Custom image source type.
  final pulumi.Input<String> source;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;
  /// Image version name.
  final pulumi.Input<String> versionName;
  /// The Id of the associated VHD resource.
  final pulumi.Input<String>? vhdId;

  /// Creates a new [CustomImageArgs].
  /// [customImageName] The resource name of the test base custom image.
  /// [definitionName] Image definition name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] Custom image source type.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  /// [versionName] Image version name.
  /// [vhdId] The Id of the associated VHD resource.
  CustomImageArgs({
    pulumi.Output<String>? customImageName,
    required pulumi.Output<String> definitionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> source,
    required pulumi.Output<String> testBaseAccountName,
    required pulumi.Output<String> versionName,
    pulumi.Output<String>? vhdId,
  }) :
      customImageName = pulumi.Input.asOptionalInput<String>(customImageName),
      definitionName = pulumi.Input.asInput<String>(definitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asInput<String>(source),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName),
      versionName = pulumi.Input.asInput<String>(versionName),
      vhdId = pulumi.Input.asOptionalInput<String>(vhdId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageName': ?customImageName,
      'definitionName': definitionName,
      'resourceGroupName': resourceGroupName,
      'source': source,
      'testBaseAccountName': testBaseAccountName,
      'versionName': versionName,
      'vhdId': ?vhdId,
    };
  }

  factory CustomImageArgs.fromMap(Map<String, dynamic> map) {
    return CustomImageArgs(
      customImageName: map['customImageName'] == null ? null : pulumi.Output.create<String>(map['customImageName'] as String),
      definitionName: pulumi.Output.create<String>(map['definitionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: pulumi.Output.create<String>(map['source'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
      versionName: pulumi.Output.create<String>(map['versionName'] as String),
      vhdId: map['vhdId'] == null ? null : pulumi.Output.create<String>(map['vhdId'] as String),
    );
  }
}

