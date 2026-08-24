// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsBisoAdminControls {
  /// Configure copy behavior. If set to remote*only, users cannot copy isolated content from the remote browser to the local clipboard. If this field is absent, copying remains enabled. Applies only when version == "v2".
  /// Available values: "enabled", "disabled", "remote*only".
  final pulumi.Input<String?>? copy;
  /// Set to false to enable copy-pasting. Only applies when `version == "v1"`.
  final pulumi.Input<bool?>? dcp;
  /// Set to false to enable downloading. Only applies when `version == "v1"`.
  final pulumi.Input<bool?>? dd;
  /// Set to false to enable keyboard usage. Only applies when `version == "v1"`.
  final pulumi.Input<bool?>? dk;
  /// Configure download behavior. When set to remote*only, users can view downloads but cannot save them. If this field is absent, downloading remains enabled. Applies only when version == "v2".
  /// Available values: "enabled", "disabled", "remote*only".
  final pulumi.Input<String?>? download;
  /// Set to false to enable printing. Only applies when `version == "v1"`.
  final pulumi.Input<bool?>? dp;
  /// Set to false to enable uploading. Only applies when `version == "v1"`.
  final pulumi.Input<bool?>? du;
  /// Configure keyboard usage behavior. If this field is absent, keyboard usage remains enabled. Applies only when version == "v2".
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? keyboard;
  /// Configure paste behavior. If set to remote*only, users cannot paste content from the local clipboard into isolated pages. If this field is absent, pasting remains enabled. Applies only when version == "v2".
  /// Available values: "enabled", "disabled", "remote*only".
  final pulumi.Input<String?>? paste;
  /// Configure print behavior. Default, Printing is enabled. Applies only when version == "v2".
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? printing;
  /// Configure upload behavior. If this field is absent, uploading remains enabled. Applies only when version == "v2".
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? upload;
  /// Indicate which version of the browser isolation controls should apply.
  /// Available values: "v1", "v2".
  final pulumi.Input<String?>? version;
  /// Specify the watermark ID (UUID) to apply to the isolated browser session. When present, enables watermark rendering in the isolated browser.
  final pulumi.Input<String?>? wmId;

  /// Creates a new [TeamsRuleRuleSettingsBisoAdminControls].
  /// [copy] Configure copy behavior. If set to remote*only, users cannot copy isolated content from the remote browser to the local clipboard. If this field is absent, copying remains enabled. Applies only when version == "v2".
  /// [dcp] Set to false to enable copy-pasting. Only applies when `version == "v1"`.
  /// [dd] Set to false to enable downloading. Only applies when `version == "v1"`.
  /// [dk] Set to false to enable keyboard usage. Only applies when `version == "v1"`.
  /// [download] Configure download behavior. When set to remote*only, users can view downloads but cannot save them. If this field is absent, downloading remains enabled. Applies only when version == "v2".
  /// [dp] Set to false to enable printing. Only applies when `version == "v1"`.
  /// [du] Set to false to enable uploading. Only applies when `version == "v1"`.
  /// [keyboard] Configure keyboard usage behavior. If this field is absent, keyboard usage remains enabled. Applies only when version == "v2".
  /// [paste] Configure paste behavior. If set to remote*only, users cannot paste content from the local clipboard into isolated pages. If this field is absent, pasting remains enabled. Applies only when version == "v2".
  /// [printing] Configure print behavior. Default, Printing is enabled. Applies only when version == "v2".
  /// [upload] Configure upload behavior. If this field is absent, uploading remains enabled. Applies only when version == "v2".
  /// [version] Indicate which version of the browser isolation controls should apply.
  /// [wmId] Specify the watermark ID (UUID) to apply to the isolated browser session. When present, enables watermark rendering in the isolated browser.
  const TeamsRuleRuleSettingsBisoAdminControls({
    this.copy,
    this.dcp,
    this.dd,
    this.dk,
    this.download,
    this.dp,
    this.du,
    this.keyboard,
    this.paste,
    this.printing,
    this.upload,
    this.version,
    this.wmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': ?copy,
      'dcp': ?dcp,
      'dd': ?dd,
      'dk': ?dk,
      'download': ?download,
      'dp': ?dp,
      'du': ?du,
      'keyboard': ?keyboard,
      'paste': ?paste,
      'printing': ?printing,
      'upload': ?upload,
      'version': ?version,
      'wmId': ?wmId,
    };
  }

  factory TeamsRuleRuleSettingsBisoAdminControls.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsBisoAdminControls(
      copy: (() { final guardedValue = map['copy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dcp: (() { final guardedValue = map['dcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dd: (() { final guardedValue = map['dd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dk: (() { final guardedValue = map['dk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      download: (() { final guardedValue = map['download']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dp: (() { final guardedValue = map['dp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      du: (() { final guardedValue = map['du']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyboard: (() { final guardedValue = map['keyboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paste: (() { final guardedValue = map['paste']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      printing: (() { final guardedValue = map['printing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upload: (() { final guardedValue = map['upload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wmId: (() { final guardedValue = map['wmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
