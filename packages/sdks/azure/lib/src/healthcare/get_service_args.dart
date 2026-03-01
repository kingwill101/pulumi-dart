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
    required pulumi.Output<String> location,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

