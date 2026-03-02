// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhub_get_hub_get_hub_args_doc}
/// Arguments for getHub.
/// {@endtemplate}
/// {@macro pulumi_notificationhub_get_hub_get_hub_args_doc}
class GetHubArgs {
  /// Specifies the Name of the Notification Hub.
  final pulumi.Input<String> name;
  /// Specifies the Name of the Notification Hub Namespace which contains the Notification Hub.
  final pulumi.Input<String> namespaceName;
  /// Specifies the Name of the Resource Group within which the Notification Hub exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHubArgs].
  /// [name] Specifies the Name of the Notification Hub.
  /// [namespaceName] Specifies the Name of the Notification Hub Namespace which contains the Notification Hub.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the Notification Hub exists.
  GetHubArgs({
    required this.name,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHubArgs.fromMap(Map<String, dynamic> map) {
    return GetHubArgs(
      name: (map['name'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

