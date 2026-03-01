// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_image_definition_args_doc}
/// The set of arguments for ImageDefinition.
/// {@endtemplate}
/// {@macro pulumi_testbase_image_definition_args_doc}
class ImageDefinitionArgs {
  /// Custom image architecture.
  final pulumi.Input<String> architecture;
  /// The resource name of the test base image definition.
  final pulumi.Input<String>? imageDefinitionName;
  /// Custom image OS state.
  final pulumi.Input<String> osState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Custom image security type.
  final pulumi.Input<String> securityType;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [ImageDefinitionArgs].
  /// [architecture] Custom image architecture.
  /// [imageDefinitionName] The resource name of the test base image definition.
  /// [osState] Custom image OS state.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityType] Custom image security type.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  ImageDefinitionArgs({
    required pulumi.Output<String> architecture,
    pulumi.Output<String>? imageDefinitionName,
    required pulumi.Output<String> osState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> securityType,
    required pulumi.Output<String> testBaseAccountName,
  }) :
      architecture = pulumi.Input.asInput<String>(architecture),
      imageDefinitionName = pulumi.Input.asOptionalInput<String>(imageDefinitionName),
      osState = pulumi.Input.asInput<String>(osState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityType = pulumi.Input.asInput<String>(securityType),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'imageDefinitionName': ?imageDefinitionName,
      'osState': osState,
      'resourceGroupName': resourceGroupName,
      'securityType': securityType,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory ImageDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ImageDefinitionArgs(
      architecture: pulumi.Output.create<String>(map['architecture'] as String),
      imageDefinitionName: map['imageDefinitionName'] == null ? null : pulumi.Output.create<String>(map['imageDefinitionName'] as String),
      osState: pulumi.Output.create<String>(map['osState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityType: pulumi.Output.create<String>(map['securityType'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}

