// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitive_get_account_project_get_account_project_args_doc}
/// Arguments for getAccountProject.
/// {@endtemplate}
/// {@macro pulumi_cognitive_get_account_project_get_account_project_args_doc}
class GetAccountProjectArgs {
  /// The name of the Cognitive Services Account in which the Project exists.
  final pulumi.Input<String> cognitiveAccountName;
  /// The name of the Cognitive Services Account Project.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Cognitive Services Account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountProjectArgs].
  /// [cognitiveAccountName] The name of the Cognitive Services Account in which the Project exists.
  /// [name] The name of the Cognitive Services Account Project.
  /// [resourceGroupName] The name of the Resource Group where the Cognitive Services Account exists.
  GetAccountProjectArgs({
    required this.cognitiveAccountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountName': cognitiveAccountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountProjectArgs(
      cognitiveAccountName: (map['cognitiveAccountName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

