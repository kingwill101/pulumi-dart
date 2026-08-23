// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_exadata_infrastructure_get_exadata_infrastructure_args_doc}
/// Arguments for getExadataInfrastructure.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_exadata_infrastructure_get_exadata_infrastructure_args_doc}
class GetExadataInfrastructureArgs {
  /// The name of this Cloud Exadata Infrastructure.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Cloud Exadata Infrastructure exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExadataInfrastructureArgs].
  /// [name] The name of this Cloud Exadata Infrastructure.
  /// [resourceGroupName] The name of the Resource Group where the Cloud Exadata Infrastructure exists.
  const GetExadataInfrastructureArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
