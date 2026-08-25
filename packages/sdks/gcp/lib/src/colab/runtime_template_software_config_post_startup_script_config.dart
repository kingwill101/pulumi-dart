// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateSoftwareConfigPostStartupScriptConfig {
  /// Post startup script to run after runtime is started.
  final pulumi.Input<String?>? postStartupScript;
  /// Post startup script behavior that defines download and execution behavior.
  /// Possible values are: `RUN_ONCE`, `RUN_EVERY_START`, `DOWNLOAD_AND_RUN_EVERY_START`.
  final pulumi.Input<String?>? postStartupScriptBehavior;
  /// Post startup script url to download. Example: https://bucket/script.sh.
  final pulumi.Input<String?>? postStartupScriptUrl;

  /// Creates a new [RuntimeTemplateSoftwareConfigPostStartupScriptConfig].
  /// [postStartupScript] Post startup script to run after runtime is started.
  /// [postStartupScriptBehavior] Post startup script behavior that defines download and execution behavior.
  /// [postStartupScriptUrl] Post startup script url to download. Example: https://bucket/script.sh.
  const RuntimeTemplateSoftwareConfigPostStartupScriptConfig({
    this.postStartupScript,
    this.postStartupScriptBehavior,
    this.postStartupScriptUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postStartupScript': ?postStartupScript,
      'postStartupScriptBehavior': ?postStartupScriptBehavior,
      'postStartupScriptUrl': ?postStartupScriptUrl,
    };
  }

  factory RuntimeTemplateSoftwareConfigPostStartupScriptConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateSoftwareConfigPostStartupScriptConfig(
      postStartupScript: (() { final guardedValue = map['postStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postStartupScriptBehavior: (() { final guardedValue = map['postStartupScriptBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postStartupScriptUrl: (() { final guardedValue = map['postStartupScriptUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
