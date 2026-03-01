// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_communication_service_service_args_doc}
class ServiceArgs {
  /// The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `usgov` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String>? dataLocation;
  /// The name of the Communication Service resource. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Communication Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [dataLocation] The location where the Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK`, `usgov` and `United States`. Defaults to `United States`. Changing this forces a new Communication Service to be created.
  /// [name] The name of the Communication Service resource. Changing this forces a new Communication Service to be created.
  /// [resourceGroupName] The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created.
  /// [tags] A mapping of tags which should be assigned to the Communication Service.
  ServiceArgs({
    pulumi.Output<String>? dataLocation,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataLocation = pulumi.Input.asOptionalInput<String>(dataLocation),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocation': ?dataLocation,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      dataLocation: map['dataLocation'] == null ? null : pulumi.Output.create<String>(map['dataLocation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

