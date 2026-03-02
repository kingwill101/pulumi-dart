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
    this.applicationId,
    this.applicationObjectId,
    this.displayName,
    this.servicePrincipalId,
    this.servicePrincipalObjectId,
    this.templateId,
  });

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
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      applicationObjectId: map['applicationObjectId'] == null ? null : (map['applicationObjectId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId'] as String).input(),
      servicePrincipalObjectId: map['servicePrincipalObjectId'] == null ? null : (map['servicePrincipalObjectId'] as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
    );
  }
}

