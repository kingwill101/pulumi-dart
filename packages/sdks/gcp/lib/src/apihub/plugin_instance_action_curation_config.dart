// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_action_curation_config_custom_curation.dart';

class PluginInstanceActionCurationConfig {
  /// Possible values:
  /// CURATION_TYPE_UNSPECIFIED
  /// DEFAULT_CURATION_FOR_API_METADATA
  /// CUSTOM_CURATION_FOR_API_METADATA
  final pulumi.Input<String>? curationType;
  /// Custom curation information for this plugin instance.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceActionCurationConfigCustomCuration>? customCuration;

  /// Creates a new [PluginInstanceActionCurationConfig].
  /// [curationType] Possible values:
  /// [customCuration] Custom curation information for this plugin instance.
  PluginInstanceActionCurationConfig({
    this.curationType,
    this.customCuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curationType': ?curationType,
      'customCuration': ?pulumi.Input.mapOptionalInputValue<PluginInstanceActionCurationConfigCustomCuration, Map<String, dynamic>>(customCuration, (value) => value.toMap()),
    };
  }

  factory PluginInstanceActionCurationConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceActionCurationConfig(
      curationType: map['curationType'] == null ? null : (map['curationType']! as String).input(),
      customCuration: map['customCuration'] == null ? null : (PluginInstanceActionCurationConfigCustomCuration.fromMap((map['customCuration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

