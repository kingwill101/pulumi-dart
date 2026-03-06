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
  const ApplicationFromTemplateState({
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
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationObjectId: (() { final guardedValue = map['applicationObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalObjectId: (() { final guardedValue = map['servicePrincipalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

