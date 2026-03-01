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
    pulumi.Output<String>? applicationId,
    pulumi.Output<ApplicationAttributes>? attributes,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<ApplicationScope>? scope,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      attributes = pulumi.Input.asOptionalInput<ApplicationAttributes>(attributes),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      scope = pulumi.Input.asOptionalInput<ApplicationScope>(scope),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<ApplicationAttributes>(ApplicationAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<ApplicationScope>(ApplicationScope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

