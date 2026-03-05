// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_service_get_service_args_doc}
class GetServiceArgs {
  /// The Azure Region where the Service is located.
  final pulumi.Input<String> location;
  /// Specifies the name of the Healthcare Service.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Healthcare Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServiceArgs].
  /// [location] The Azure Region where the Service is located.
  /// [name] Specifies the name of the Healthcare Service.
  /// [resourceGroupName] The name of the Resource Group in which the Healthcare Service exists.
  GetServiceArgs({
    required this.location,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

