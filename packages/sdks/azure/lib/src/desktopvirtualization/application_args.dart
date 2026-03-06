// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_application_application_args_doc}
class ApplicationArgs {
  /// Resource ID for a Virtual Desktop Application Group to associate with the Virtual Desktop Application. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationGroupId;
  /// Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all. Possible values include: `DoNotAllow`, `Allow`, `Require`.
  final pulumi.Input<String> commandLineArgumentPolicy;
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
  final pulumi.Input<String> path;
  /// Specifies whether to show the RemoteApp program in the RD Web Access server.
  final pulumi.Input<bool>? showInPortal;

  /// Creates a new [ApplicationArgs].
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
  const ApplicationArgs({
    required this.applicationGroupId,
    required this.commandLineArgumentPolicy,
    this.commandLineArguments,
    this.description,
    this.friendlyName,
    this.iconIndex,
    this.iconPath,
    this.name,
    required this.path,
    this.showInPortal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupId': applicationGroupId,
      'commandLineArgumentPolicy': commandLineArgumentPolicy,
      'commandLineArguments': ?commandLineArguments,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'iconIndex': ?iconIndex,
      'iconPath': ?iconPath,
      'name': ?name,
      'path': path,
      'showInPortal': ?showInPortal,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationGroupId: pulumi.Input.fromValue(map['applicationGroupId'] as String),
      commandLineArgumentPolicy: pulumi.Input.fromValue(map['commandLineArgumentPolicy'] as String),
      commandLineArguments: (() { final guardedValue = map['commandLineArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconIndex: (() { final guardedValue = map['iconIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      iconPath: (() { final guardedValue = map['iconPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      showInPortal: (() { final guardedValue = map['showInPortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

