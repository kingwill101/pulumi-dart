// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationGroup resources.
class ApplicationGroupState {
  /// Option to set the display name for the default sessionDesktop desktop when `type` is set to `Desktop`. A value here is mandatory for connections to the desktop using the Windows 365 portal. Without it the connection will hang at 'Loading Client'.
  final pulumi.Input<String>? defaultDesktopDisplayName;
  /// Option to set a description for the Virtual Desktop Application Group.
  final pulumi.Input<String>? description;
  /// Option to set a friendly name for the Virtual Desktop Application Group.
  final pulumi.Input<String>? friendlyName;
  /// Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? hostPoolId;
  /// The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of Virtual Desktop Application Group. Valid options are `RemoteApp` or `Desktop` application groups. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [ApplicationGroupState].
  /// [defaultDesktopDisplayName] Option to set the display name for the default sessionDesktop desktop when `type` is set to `Desktop`. A value here is mandatory for connections to the desktop using the Windows 365 portal. Without it the connection will hang at 'Loading Client'.
  /// [description] Option to set a description for the Virtual Desktop Application Group.
  /// [friendlyName] Option to set a friendly name for the Virtual Desktop Application Group.
  /// [hostPoolId] Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  /// [location] The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created.
  /// [name] The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] Type of Virtual Desktop Application Group. Valid options are `RemoteApp` or `Desktop` application groups. Changing this forces a new resource to be created.
  ApplicationGroupState({
    this.defaultDesktopDisplayName,
    this.description,
    this.friendlyName,
    this.hostPoolId,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDesktopDisplayName': ?defaultDesktopDisplayName,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'hostPoolId': ?hostPoolId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory ApplicationGroupState.fromMap(Map<String, dynamic> map) {
    return ApplicationGroupState(
      defaultDesktopDisplayName: (() { final guardedValue = map['defaultDesktopDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPoolId: (() { final guardedValue = map['hostPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

