// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_template_software_config_env.dart';
import 'runtime_template_software_config_post_startup_script_config.dart';

class RuntimeTemplateSoftwareConfig {
  /// Environment variables to be passed to the container.
  /// Structure is documented below.
  final pulumi.Input<List<RuntimeTemplateSoftwareConfigEnv>>? envs;

  /// Post startup script config.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateSoftwareConfigPostStartupScriptConfig>?
  postStartupScriptConfig;

  /// Creates a new [RuntimeTemplateSoftwareConfig].
  /// [envs] Environment variables to be passed to the container.
  /// [postStartupScriptConfig] Post startup script config.
  RuntimeTemplateSoftwareConfig({this.envs, this.postStartupScriptConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envs':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuntimeTemplateSoftwareConfigEnv>,
            List<Map<String, dynamic>>
          >(
            envs,
            (value) =>
                pulumi.Input.encodeList<
                  RuntimeTemplateSoftwareConfigEnv,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'postStartupScriptConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeTemplateSoftwareConfigPostStartupScriptConfig,
            Map<String, dynamic>
          >(postStartupScriptConfig, (value) => value.toMap()),
    };
  }

  factory RuntimeTemplateSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateSoftwareConfig(
      envs: (() {
        final guardedValue = map['envs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RuntimeTemplateSoftwareConfigEnv>(
            guardedValue,
            (value) => RuntimeTemplateSoftwareConfigEnv.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      postStartupScriptConfig: (() {
        final guardedValue = map['postStartupScriptConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeTemplateSoftwareConfigPostStartupScriptConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
