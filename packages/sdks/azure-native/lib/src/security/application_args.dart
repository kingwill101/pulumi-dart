// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_security_application_args_doc}
class ApplicationArgs {
  /// The security Application key - unique key for the standard application
  final pulumi.Input<String>? applicationId;
  /// The application conditionSets - see examples
  final pulumi.Input<List<dynamic>> conditionSets;
  /// description of the application
  final pulumi.Input<String>? description;
  /// display name of the application
  final pulumi.Input<String>? displayName;
  /// The application source, what it affects, e.g. Assessments
  final pulumi.Input<String> sourceResourceType;

  /// Creates a new [ApplicationArgs].
  /// [applicationId] The security Application key - unique key for the standard application
  /// [conditionSets] The application conditionSets - see examples
  /// [description] description of the application
  /// [displayName] display name of the application
  /// [sourceResourceType] The application source, what it affects, e.g. Assessments
  const ApplicationArgs({
    this.applicationId,
    required this.conditionSets,
    this.description,
    this.displayName,
    required this.sourceResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'conditionSets': conditionSets,
      'description': ?description,
      'displayName': ?displayName,
      'sourceResourceType': sourceResourceType,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditionSets: pulumi.Input.fromValue((map['conditionSets'] as List).cast<dynamic>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceType: pulumi.Input.fromValue(map['sourceResourceType'] as String),
    );
  }
}
