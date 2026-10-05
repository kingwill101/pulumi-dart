// ignore_for_file: unused_element, unnecessary_cast

import 'node_group_autoscaling_policy_response.dart';
import 'node_group_maintenance_window_response.dart';
import 'share_settings_response.dart';

/// Result data returned by getNodeGroup.
class GetNodeGroupResult {
  /// Specifies how autoscaling should behave.
  final NodeGroupAutoscalingPolicyResponse? autoscalingPolicy;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  final String? fingerprint;
  /// The type of the resource. Always compute#nodeGroup for node group.
  final String? kind;
  /// An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  final String? locationHint;
  /// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  final String? maintenanceInterval;
  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  final String? maintenancePolicy;
  final NodeGroupMaintenanceWindowResponse? maintenanceWindow;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// URL of the node template to create the node group from.
  final String? nodeTemplate;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// Share-settings for the node group
  final ShareSettingsResponse? shareSettings;
  /// The total number of nodes in the node group.
  final int? size;
  final String? status;
  /// The name of the zone where the node group resides, such as us-central1-a.
  final String? zone;

  /// Creates a new [GetNodeGroupResult].
  /// [autoscalingPolicy] Specifies how autoscaling should behave.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Optional.
  /// [kind] The type of the resource. Always compute#nodeGroup for node group.
  /// [locationHint] An opaque location hint used to place the Node close to other resources. This field is for use by internal tools that use the public API. The location hint here on the NodeGroup overrides any location_hint present in the NodeTemplate.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
  /// [maintenancePolicy] Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
  /// [maintenanceWindow] Optional.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nodeTemplate] URL of the node template to create the node group from.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [shareSettings] Share-settings for the node group
  /// [size] The total number of nodes in the node group.
  /// [status] Optional.
  /// [zone] The name of the zone where the node group resides, such as us-central1-a.
  const GetNodeGroupResult({
    this.autoscalingPolicy,
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.kind,
    this.locationHint,
    this.maintenanceInterval,
    this.maintenancePolicy,
    this.maintenanceWindow,
    this.name,
    this.nodeTemplate,
    this.selfLink,
    this.selfLinkWithId,
    this.shareSettings,
    this.size,
    this.status,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy': ?autoscalingPolicy?.toMap(),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'kind': ?kind,
      'locationHint': ?locationHint,
      'maintenanceInterval': ?maintenanceInterval,
      'maintenancePolicy': ?maintenancePolicy,
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'name': ?name,
      'nodeTemplate': ?nodeTemplate,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'shareSettings': ?shareSettings?.toMap(),
      'size': ?size,
      'status': ?status,
      'zone': ?zone,
    };
  }

  factory GetNodeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResult(
      autoscalingPolicy: (() { final guardedValue = map['autoscalingPolicy']; if (guardedValue == null) return null; return NodeGroupAutoscalingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationHint: (() { final guardedValue = map['locationHint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceInterval: (() { final guardedValue = map['maintenanceInterval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return NodeGroupMaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTemplate: (() { final guardedValue = map['nodeTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareSettings: (() { final guardedValue = map['shareSettings']; if (guardedValue == null) return null; return ShareSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
