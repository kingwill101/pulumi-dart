// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_custom_image_args_doc}
/// Arguments for getCustomImage.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_custom_image_args_doc}
class GetCustomImageArgs {
  /// The resource name of the test base custom image.
  final pulumi.Input<String> customImageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetCustomImageArgs].
  /// [customImageName] The resource name of the test base custom image.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetCustomImageArgs({
    required this.customImageName,
    required this.resourceGroupName,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageName': customImageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetCustomImageArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomImageArgs(
      customImageName: pulumi.Input.fromValue(map['customImageName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
    );
  }
}

