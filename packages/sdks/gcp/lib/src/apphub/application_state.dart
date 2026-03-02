// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attributes.dart';
import 'application_scope.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Required. The Application identifier.
  final pulumi.Input<String>? applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributes>? attributes;
  /// Output only. Create time.
  final pulumi.Input<String>? createTime;
  /// Optional. User-defined description of an Application.
  final pulumi.Input<String>? description;
  /// Optional. User-defined name for the Application.
  final pulumi.Input<String>? displayName;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of an Application. Format:
  /// "projects/{host-project-id}/locations/{location}/applications/{application-id}"
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Scope of an application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationScope>? scope;
  /// Output only. Application state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  final pulumi.Input<String>? state;
  /// Output only. A universally unique identifier (in UUID4 format) for the `Application`.
  final pulumi.Input<String>? uid;
  /// Output only. Update time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ApplicationState].
  /// [applicationId] Required. The Application identifier.
  /// [attributes] Consumer provided attributes.
  /// [createTime] Output only. Create time.
  /// [description] Optional. User-defined description of an Application.
  /// [displayName] Optional. User-defined name for the Application.
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] Identifier. The resource name of an Application. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] Scope of an application.
  /// [state] Output only. Application state.
  /// [uid] Output only. A universally unique identifier (in UUID4 format) for the `Application`.
  /// [updateTime] Output only. Update time.
  ApplicationState({
    this.applicationId,
    this.attributes,
    this.createTime,
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
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      attributes: map['attributes'] == null ? null : (ApplicationAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scope: map['scope'] == null ? null : (ApplicationScope.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

