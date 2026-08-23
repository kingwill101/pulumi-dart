// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_file.dart';
import 'import_file.dart';

class TargetConfiguration {
  /// The configuration to use for this deployment.
  final pulumi.Input<ConfigFile>? config;
  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final pulumi.Input<List<ImportFile>>? imports;

  /// Creates a new [TargetConfiguration].
  /// [config] The configuration to use for this deployment.
  /// [imports] Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  const TargetConfiguration({
    this.config,
    this.imports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<ConfigFile, Map<String, dynamic>>(config, (value) => value.toMap()),
      'imports': ?pulumi.Input.mapOptionalInputValue<List<ImportFile>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<ImportFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TargetConfiguration.fromMap(Map<String, dynamic> map) {
    return TargetConfiguration(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imports: (() { final guardedValue = map['imports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportFile>(guardedValue, (value) => ImportFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
