// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attributes.dart';
import 'application_scope.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Required. The Application identifier.
  final pulumi.Input<String?>? applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributes?>? attributes;
  /// Output only. Create time.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. User-defined description of an Application.
  final pulumi.Input<String?>? description;
  /// Optional. User-defined name for the Application.
  final pulumi.Input<String?>? displayName;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of an Application. Format:
  /// "projects/{host-project-id}/locations/{location}/applications/{application-id}"
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Scope of an application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationScope?>? scope;
  /// Output only. Application state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  final pulumi.Input<String?>? state;
  /// Output only. A universally unique identifier (in UUID4 format) for the `Application`.
  final pulumi.Input<String?>? uid;
  /// Output only. Update time.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ApplicationState].
  /// [applicationId] Required. The Application identifier.
  /// [attributes] Consumer provided attributes.
  /// [createTime] Output only. Create time.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. User-defined description of an Application.
  /// [displayName] Optional. User-defined name for the Application.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] Identifier. The resource name of an Application. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] Scope of an application.
  /// [state] Output only. Application state.
  /// [uid] Output only. A universally unique identifier (in UUID4 format) for the `Application`.
  /// [updateTime] Output only. Update time.
  const ApplicationState({
    this.applicationId,
    this.attributes,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.scope,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<ApplicationAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'scope': ?pulumi.Input.mapOptionalInputValue<ApplicationScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
