// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_application_group_application_group_args_doc}
/// The set of arguments for ApplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_application_group_application_group_args_doc}
class ApplicationGroupArgs {
  /// Option to set the display name for the default sessionDesktop desktop when `type` is set to `Desktop`. A value here is mandatory for connections to the desktop using the Windows 365 portal. Without it the connection will hang at 'Loading Client'.
  final pulumi.Input<String>? defaultDesktopDisplayName;
  /// Option to set a description for the Virtual Desktop Application Group.
  final pulumi.Input<String>? description;
  /// Option to set a friendly name for the Virtual Desktop Application Group.
  final pulumi.Input<String>? friendlyName;
  /// Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  final pulumi.Input<String> hostPoolId;
  /// The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of Virtual Desktop Application Group. Valid options are `RemoteApp` or `Desktop` application groups. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGroupArgs].
  /// [defaultDesktopDisplayName] Option to set the display name for the default sessionDesktop desktop when `type` is set to `Desktop`. A value here is mandatory for connections to the desktop using the Windows 365 portal. Without it the connection will hang at 'Loading Client'.
  /// [description] Option to set a description for the Virtual Desktop Application Group.
  /// [friendlyName] Option to set a friendly name for the Virtual Desktop Application Group.
  /// [hostPoolId] Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  /// [location] The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created.
  /// [name] The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] Type of Virtual Desktop Application Group. Valid options are `RemoteApp` or `Desktop` application groups. Changing this forces a new resource to be created.
  ApplicationGroupArgs({
    this.defaultDesktopDisplayName,
    this.description,
    this.friendlyName,
    required this.hostPoolId,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDesktopDisplayName': ?defaultDesktopDisplayName,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'hostPoolId': hostPoolId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationGroupArgs(
      defaultDesktopDisplayName: map['defaultDesktopDisplayName'] == null ? null : (map['defaultDesktopDisplayName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      hostPoolId: (map['hostPoolId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

