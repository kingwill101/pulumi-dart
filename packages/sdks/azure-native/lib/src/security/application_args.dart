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
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> sourceResourceType,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      sourceResourceType = pulumi.Input.asInput<String>(sourceResourceType);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      sourceResourceType: pulumi.Output.create<String>(map['sourceResourceType'] as String),
    );
  }
}

