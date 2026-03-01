// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationFromTemplate resources.
class ApplicationFromTemplateState {
  /// The resource ID for the application.
  final pulumi.Input<String>? applicationId;
  /// The object ID for the application.
  final pulumi.Input<String>? applicationObjectId;
  /// The display name for the application.
  final pulumi.Input<String>? displayName;
  /// The resource ID for the service principal.
  final pulumi.Input<String>? servicePrincipalId;
  /// The object ID for the service principal.
  final pulumi.Input<String>? servicePrincipalObjectId;
  /// Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? templateId;

  /// Creates a new [ApplicationFromTemplateState].
  /// [applicationId] The resource ID for the application.
  /// [applicationObjectId] The object ID for the application.
  /// [displayName] The display name for the application.
  /// [servicePrincipalId] The resource ID for the service principal.
  /// [servicePrincipalObjectId] The object ID for the service principal.
  /// [templateId] Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  ApplicationFromTemplateState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? applicationObjectId,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? servicePrincipalId,
    pulumi.Output<String>? servicePrincipalObjectId,
    pulumi.Output<String>? templateId,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      applicationObjectId = pulumi.Input.asOptionalInput<String>(applicationObjectId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      servicePrincipalObjectId = pulumi.Input.asOptionalInput<String>(servicePrincipalObjectId),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'applicationObjectId': ?applicationObjectId,
      'displayName': ?displayName,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalObjectId': ?servicePrincipalObjectId,
      'templateId': ?templateId,
    };
  }

  factory ApplicationFromTemplateState.fromMap(Map<String, dynamic> map) {
    return ApplicationFromTemplateState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      applicationObjectId: map['applicationObjectId'] == null ? null : pulumi.Output.create<String>(map['applicationObjectId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalId'] as String),
      servicePrincipalObjectId: map['servicePrincipalObjectId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalObjectId'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
    );
  }
}

