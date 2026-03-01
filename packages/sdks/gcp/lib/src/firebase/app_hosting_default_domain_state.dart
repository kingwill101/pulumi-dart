// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppHostingDefaultDomain resources.
class AppHostingDefaultDomainState {
  /// The ID of the Backend that this Domain is associated with
  final pulumi.Input<String>? backend;
  /// Time at which the domain was created.
  final pulumi.Input<String>? createTime;
  /// Whether the domain is disabled. Defaults to false.
  final pulumi.Input<bool>? disabled;
  /// Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  final pulumi.Input<String>? domainId;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  final pulumi.Input<String>? etag;
  /// The location of the Backend that this Domain is associated with
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the domain, e.g.
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// System-assigned, unique identifier.
  final pulumi.Input<String>? uid;
  /// Time at which the domain was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AppHostingDefaultDomainState].
  /// [backend] The ID of the Backend that this Domain is associated with
  /// [createTime] Time at which the domain was created.
  /// [disabled] Whether the domain is disabled. Defaults to false.
  /// [domainId] Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  /// [etag] Server-computed checksum based on other values; may be sent
  /// [location] The location of the Backend that this Domain is associated with
  /// [name] Identifier. The resource name of the domain, e.g.
  /// [project] The ID of the project in which the resource belongs.
  /// [uid] System-assigned, unique identifier.
  /// [updateTime] Time at which the domain was last updated.
  AppHostingDefaultDomainState({
    pulumi.Output<String>? backend,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      backend = pulumi.Input.asOptionalInput<String>(backend),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': ?backend,
      'createTime': ?createTime,
      'disabled': ?disabled,
      'domainId': ?domainId,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory AppHostingDefaultDomainState.fromMap(Map<String, dynamic> map) {
    return AppHostingDefaultDomainState(
      backend: map['backend'] == null ? null : pulumi.Output.create<String>(map['backend'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

