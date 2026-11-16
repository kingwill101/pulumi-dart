// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_metadata_created_from_emdash_plugin.dart';

class AiSearchInstanceMetadata {
  final pulumi.Input<bool?>? createdFromAisearchWizard;
  final pulumi.Input<AiSearchInstanceMetadataCreatedFromEmdashPlugin?>? createdFromEmdashPlugin;
  final pulumi.Input<String?>? workerDomain;

  /// Creates a new [AiSearchInstanceMetadata].
  /// [createdFromAisearchWizard] Optional.
  /// [createdFromEmdashPlugin] Optional.
  /// [workerDomain] Optional.
  const AiSearchInstanceMetadata({
    this.createdFromAisearchWizard,
    this.createdFromEmdashPlugin,
    this.workerDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdFromAisearchWizard': ?createdFromAisearchWizard,
      'createdFromEmdashPlugin': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceMetadataCreatedFromEmdashPlugin, Map<String, dynamic>>(createdFromEmdashPlugin, (value) => value.toMap()),
      'workerDomain': ?workerDomain,
    };
  }

  factory AiSearchInstanceMetadata.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceMetadata(
      createdFromAisearchWizard: (() { final guardedValue = map['createdFromAisearchWizard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdFromEmdashPlugin: (() { final guardedValue = map['createdFromEmdashPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceMetadataCreatedFromEmdashPlugin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workerDomain: (() { final guardedValue = map['workerDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
