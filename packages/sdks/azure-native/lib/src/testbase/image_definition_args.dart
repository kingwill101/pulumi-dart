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
  const ImageDefinitionArgs({
    required this.architecture,
    this.imageDefinitionName,
    required this.osState,
    required this.resourceGroupName,
    required this.securityType,
    required this.testBaseAccountName,
  });

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
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      imageDefinitionName: (() { final guardedValue = map['imageDefinitionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osState: pulumi.Input.fromValue(map['osState'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityType: pulumi.Input.fromValue(map['securityType'] as String),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
    );
  }
}
