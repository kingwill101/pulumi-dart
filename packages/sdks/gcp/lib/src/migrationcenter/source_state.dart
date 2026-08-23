// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Source resources.
class SourceState {
  /// The timestamp when the source was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Free-text description.
  final pulumi.Input<String>? description;
  /// User-friendly display name.
  final pulumi.Input<String>? displayName;
  /// The number of frames that were reported by the source and contained errors.
  final pulumi.Input<int>? errorFrameCount;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// If `true`, the source is managed by other service(s).
  final pulumi.Input<bool>? managed;
  /// The full name of the source.
  final pulumi.Input<String>? name;
  /// Number of frames that are still being processed.
  final pulumi.Input<int>? pendingFrameCount;
  /// The information confidence of the source.
  /// The higher the value, the higher the confidence.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// User specified ID for the source. It will become the last component of the
  /// source name. The ID must be unique within the project, must conform with
  /// RFC-1034, is restricted to lower-cased letters, and has a maximum
  /// length of 63 characters. The ID must match the
  /// regular expression: `a-z?`.
  final pulumi.Input<String>? sourceId;
  /// The state of the source.
  /// Possible values:
  /// ACTIVE
  /// DELETING
  /// INVALID
  final pulumi.Input<String>? state;
  /// Data source type.
  /// Possible values:
  /// SOURCE_TYPE_UNKNOWN
  /// SOURCE_TYPE_UPLOAD
  /// SOURCE_TYPE_GUEST_OS_SCAN
  /// SOURCE_TYPE_INVENTORY_SCAN
  /// SOURCE_TYPE_CUSTOM
  /// SOURCE_TYPE_DISCOVERY_CLIENT
  final pulumi.Input<String>? type;
  /// The timestamp when the source was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SourceState].
  /// [createTime] The timestamp when the source was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name.
  /// [errorFrameCount] The number of frames that were reported by the source and contained errors.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [managed] If `true`, the source is managed by other service(s).
  /// [name] The full name of the source.
  /// [pendingFrameCount] Number of frames that are still being processed.
  /// [priority] The information confidence of the source.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceId] User specified ID for the source. It will become the last component of the
  /// [state] The state of the source.
  /// [type] Data source type.
  /// [updateTime] The timestamp when the source was last updated.
  const SourceState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.errorFrameCount,
    this.location,
    this.managed,
    this.name,
    this.pendingFrameCount,
    this.priority,
    this.project,
    this.sourceId,
    this.state,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'errorFrameCount': ?errorFrameCount,
      'location': ?location,
      'managed': ?managed,
      'name': ?name,
      'pendingFrameCount': ?pendingFrameCount,
      'priority': ?priority,
      'project': ?project,
      'sourceId': ?sourceId,
      'state': ?state,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory SourceState.fromMap(Map<String, dynamic> map) {
    return SourceState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorFrameCount: (() { final guardedValue = map['errorFrameCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pendingFrameCount: (() { final guardedValue = map['pendingFrameCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
