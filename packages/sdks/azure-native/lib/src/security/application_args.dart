// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_security_application_args_doc}
class ApplicationArgs {
  /// The security Application key - unique key for the standard application
  final pulumi.Input<String>? applicationId;
  /// description of the application
  final pulumi.Input<String>? description;
  /// display name of the application
  final pulumi.Input<String>? displayName;
  /// The application source, what it affects, e.g. Assessments
  final pulumi.Input<String> sourceResourceType;

  /// Creates a new [ApplicationArgs].
  /// [applicationId] The security Application key - unique key for the standard application
  /// [description] description of the application
  /// [displayName] display name of the application
  /// [sourceResourceType] The application source, what it affects, e.g. Assessments
  ApplicationArgs({
    this.applicationId,
    this.description,
    this.displayName,
    required this.sourceResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'description': ?description,
      'displayName': ?displayName,
      'sourceResourceType': sourceResourceType,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      sourceResourceType: (map['sourceResourceType'] as String).input(),
    );
  }
}

