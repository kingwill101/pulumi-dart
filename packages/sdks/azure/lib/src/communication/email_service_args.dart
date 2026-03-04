// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_email_service_email_service_args_doc}
/// The set of arguments for EmailService.
/// {@endtemplate}
/// {@macro pulumi_communication_email_service_email_service_args_doc}
class EmailServiceArgs {
  /// The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` `usgov` and `United States`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String> dataLocation;

  /// The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Email Communication Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EmailServiceArgs].
  /// [dataLocation] The location where the Email Communication service stores its data at rest. Possible values are `Africa`, `Asia Pacific`, `Australia`, `Brazil`, `Canada`, `Europe`, `France`, `Germany`, `India`, `Japan`, `Korea`, `Norway`, `Switzerland`, `UAE`, `UK` `usgov` and `United States`. Changing this forces a new Email Communication Service to be created.
  /// [name] The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created.
  /// [resourceGroupName] The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created.
  /// [tags] A mapping of tags which should be assigned to the Email Communication Service.
  EmailServiceArgs({
    required this.dataLocation,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocation': dataLocation,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EmailServiceArgs.fromMap(Map<String, dynamic> map) {
    return EmailServiceArgs(
      dataLocation: pulumi.Input.fromValue(map['dataLocation'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
