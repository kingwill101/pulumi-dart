// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Resource ID for a Virtual Desktop Application Group to associate with the Virtual Desktop Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationGroupId;
  /// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all. Possible values include: `DoNotAllow`, `Allow`, `Require`.
  final pulumi.Input<String>? commandLineArgumentPolicy;
  /// Command Line Arguments for Virtual Desktop Application.
  final pulumi.Input<String>? commandLineArguments;
  /// Option to set a description for the Virtual Desktop Application.
  final pulumi.Input<String>? description;
  /// Option to set a friendly name for the Virtual Desktop Application.
  final pulumi.Input<String>? friendlyName;
  /// The index of the icon you wish to use.
  final pulumi.Input<int>? iconIndex;
  /// Specifies the path for an icon which will be used for this Virtual Desktop Application.
  final pulumi.Input<String>? iconPath;
  /// The name of the Virtual Desktop Application. Changing the name forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The file path location of the app on the Virtual Desktop OS.
  final pulumi.Input<String>? path;
  /// Specifies whether to show the RemoteApp program in the RD Web Access server.
  final pulumi.Input<bool>? showInPortal;

  /// Creates a new [ApplicationState].
  /// [applicationGroupId] Resource ID for a Virtual Desktop Application Group to associate with the Virtual Desktop Application. Changing this forces a new resource to be created.
  /// [commandLineArgumentPolicy] Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all. Possible values include: `DoNotAllow`, `Allow`, `Require`.
  /// [commandLineArguments] Command Line Arguments for Virtual Desktop Application.
  /// [description] Option to set a description for the Virtual Desktop Application.
  /// [friendlyName] Option to set a friendly name for the Virtual Desktop Application.
  /// [iconIndex] The index of the icon you wish to use.
  /// [iconPath] Specifies the path for an icon which will be used for this Virtual Desktop Application.
  /// [name] The name of the Virtual Desktop Application. Changing the name forces a new resource to be created.
  /// [path] The file path location of the app on the Virtual Desktop OS.
  /// [showInPortal] Specifies whether to show the RemoteApp program in the RD Web Access server.
  ApplicationState({
    this.applicationGroupId,
    this.commandLineArgumentPolicy,
    this.commandLineArguments,
    this.description,
    this.friendlyName,
    this.iconIndex,
    this.iconPath,
    this.name,
    this.path,
    this.showInPortal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupId': ?applicationGroupId,
      'commandLineArgumentPolicy': ?commandLineArgumentPolicy,
      'commandLineArguments': ?commandLineArguments,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'iconIndex': ?iconIndex,
      'iconPath': ?iconPath,
      'name': ?name,
      'path': ?path,
      'showInPortal': ?showInPortal,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationGroupId: map['applicationGroupId'] == null ? null : (map['applicationGroupId'] as String).input(),
      commandLineArgumentPolicy: map['commandLineArgumentPolicy'] == null ? null : (map['commandLineArgumentPolicy'] as String).input(),
      commandLineArguments: map['commandLineArguments'] == null ? null : (map['commandLineArguments'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      iconIndex: map['iconIndex'] == null ? null : (map['iconIndex'] as int).input(),
      iconPath: map['iconPath'] == null ? null : (map['iconPath'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      showInPortal: map['showInPortal'] == null ? null : (map['showInPortal'] as bool).input(),
    );
  }
}

