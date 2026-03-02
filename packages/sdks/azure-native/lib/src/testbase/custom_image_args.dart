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
    this.customImageName,
    required this.definitionName,
    required this.resourceGroupName,
    required this.source,
    required this.testBaseAccountName,
    required this.versionName,
    this.vhdId,
  });

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
      customImageName: map['customImageName'] == null ? null : (map['customImageName']! as String).input(),
      definitionName: (map['definitionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      source: (map['source'] as String).input(),
      testBaseAccountName: (map['testBaseAccountName'] as String).input(),
      versionName: (map['versionName'] as String).input(),
      vhdId: map['vhdId'] == null ? null : (map['vhdId']! as String).input(),
    );
  }
}

