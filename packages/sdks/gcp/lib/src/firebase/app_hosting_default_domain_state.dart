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
    this.backend,
    this.createTime,
    this.disabled,
    this.domainId,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.uid,
    this.updateTime,
  });

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
      backend: map['backend'] == null ? null : (map['backend']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      domainId: map['domainId'] == null ? null : (map['domainId']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

