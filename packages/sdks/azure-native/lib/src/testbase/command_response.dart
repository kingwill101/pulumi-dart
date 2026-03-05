// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The command used in the test
class CommandResponse {
  /// The action of the command.
  final pulumi.Input<String> action;
  /// Specifies whether to run the command even if a previous command is failed.
  final pulumi.Input<bool>? alwaysRun;
  /// Specifies whether to apply update before the command.
  final pulumi.Input<bool>? applyUpdateBefore;
  /// The content of the command. The content depends on source type.
  final pulumi.Input<String> content;
  /// The type of command content.
  final pulumi.Input<String> contentType;
  /// Specifies whether to enroll Intune before the command.
  final pulumi.Input<bool>? enrollIntuneBefore;
  /// Specifies whether to install first party applications before running the command.
  final pulumi.Input<bool>? install1PAppBefore;
  /// Specifies the max run time of the command.
  final pulumi.Input<int>? maxRunTime;
  /// The name of the command.
  final pulumi.Input<String> name;
  /// Specifies whether the command is assigned to be executed after in-place upgrade.
  final pulumi.Input<bool>? postUpgrade;
  /// Specifies whether the command is assigned to be executed before in-place upgrade.
  final pulumi.Input<bool>? preUpgrade;
  /// Specifies whether to restart the VM after the command executed.
  final pulumi.Input<bool>? restartAfter;
  /// Specifies whether to run the command in interactive mode.
  final pulumi.Input<bool>? runAsInteractive;
  /// Specifies whether to run the command as administrator.
  final pulumi.Input<bool>? runElevated;

  /// Creates a new [CommandResponse].
  /// [action] The action of the command.
  /// [alwaysRun] Specifies whether to run the command even if a previous command is failed.
  /// [applyUpdateBefore] Specifies whether to apply update before the command.
  /// [content] The content of the command. The content depends on source type.
  /// [contentType] The type of command content.
  /// [enrollIntuneBefore] Specifies whether to enroll Intune before the command.
  /// [install1PAppBefore] Specifies whether to install first party applications before running the command.
  /// [maxRunTime] Specifies the max run time of the command.
  /// [name] The name of the command.
  /// [postUpgrade] Specifies whether the command is assigned to be executed after in-place upgrade.
  /// [preUpgrade] Specifies whether the command is assigned to be executed before in-place upgrade.
  /// [restartAfter] Specifies whether to restart the VM after the command executed.
  /// [runAsInteractive] Specifies whether to run the command in interactive mode.
  /// [runElevated] Specifies whether to run the command as administrator.
  CommandResponse({
    required this.action,
    this.alwaysRun,
    this.applyUpdateBefore,
    required this.content,
    required this.contentType,
    this.enrollIntuneBefore,
    this.install1PAppBefore,
    this.maxRunTime,
    required this.name,
    this.postUpgrade,
    this.preUpgrade,
    this.restartAfter,
    this.runAsInteractive,
    this.runElevated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'alwaysRun': ?alwaysRun,
      'applyUpdateBefore': ?applyUpdateBefore,
      'content': content,
      'contentType': contentType,
      'enrollIntuneBefore': ?enrollIntuneBefore,
      'install1PAppBefore': ?install1PAppBefore,
      'maxRunTime': ?maxRunTime,
      'name': name,
      'postUpgrade': ?postUpgrade,
      'preUpgrade': ?preUpgrade,
      'restartAfter': ?restartAfter,
      'runAsInteractive': ?runAsInteractive,
      'runElevated': ?runElevated,
    };
  }

  factory CommandResponse.fromMap(Map<String, dynamic> map) {
    return CommandResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      alwaysRun: (() { final guardedValue = map['alwaysRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      applyUpdateBefore: (() { final guardedValue = map['applyUpdateBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      content: pulumi.Input.fromValue(map['content'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      enrollIntuneBefore: (() { final guardedValue = map['enrollIntuneBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      install1PAppBefore: (() { final guardedValue = map['install1PAppBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxRunTime: (() { final guardedValue = map['maxRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      postUpgrade: (() { final guardedValue = map['postUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preUpgrade: (() { final guardedValue = map['preUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restartAfter: (() { final guardedValue = map['restartAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runAsInteractive: (() { final guardedValue = map['runAsInteractive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runElevated: (() { final guardedValue = map['runElevated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

