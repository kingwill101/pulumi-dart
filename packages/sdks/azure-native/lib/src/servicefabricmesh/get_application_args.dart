// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_get_application_args_doc}
class GetApplicationArgs {
  /// The identity of the application.
  final pulumi.Input<String> applicationResourceName;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationArgs].
  /// [applicationResourceName] The identity of the application.
  /// [resourceGroupName] Azure resource group name
  GetApplicationArgs({
    required pulumi.Output<String> applicationResourceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      applicationResourceName = pulumi.Input.asInput<String>(applicationResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationResourceName': applicationResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationResourceName: pulumi.Output.create<String>(map['applicationResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

