// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attributes.dart';
import 'application_scope.dart';

/// {@template pulumi_apphub_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_apphub_application_application_args_doc}
class ApplicationArgs {
  /// Required. The Application identifier.
  final pulumi.Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributes>? attributes;

  /// Optional. User-defined description of an Application.
  final pulumi.Input<String>? description;

  /// Optional. User-defined name for the Application.
  final pulumi.Input<String>? displayName;

  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Scope of an application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationScope> scope;

  /// Creates a new [ApplicationArgs].
  /// [applicationId] Required. The Application identifier.
  /// [attributes] Consumer provided attributes.
  /// [description] Optional. User-defined description of an Application.
  /// [displayName] Optional. User-defined name for the Application.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] Scope of an application.
  ApplicationArgs({
    required this.applicationId,
    this.attributes,
    this.description,
    this.displayName,
    required this.location,
    this.project,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationAttributes,
            Map<String, dynamic>
          >(attributes, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'scope':
          pulumi.Input.mapInputValue<ApplicationScope, Map<String, dynamic>>(
            scope,
            (value) => value.toMap(),
          ),
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationAttributes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: pulumi.Input.fromValue(
        ApplicationScope.fromMap(
          (map['scope']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
