// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_standard_args_doc}
/// Arguments for getStandard.
/// {@endtemplate}
/// {@macro pulumi_security_get_standard_args_doc}
class GetStandardArgs {
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Security Standard key - unique key for the standard type
  final pulumi.Input<String> standardId;

  /// Creates a new [GetStandardArgs].
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [standardId] The Security Standard key - unique key for the standard type
  GetStandardArgs({
    required this.resourceGroupName,
    required this.standardId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'standardId': standardId,
    };
  }

  factory GetStandardArgs.fromMap(Map<String, dynamic> map) {
    return GetStandardArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      standardId: pulumi.Input.fromValue(map['standardId'] as String),
    );
  }
}

