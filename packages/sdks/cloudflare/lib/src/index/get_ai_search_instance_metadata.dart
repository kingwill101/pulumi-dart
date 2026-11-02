// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_metadata_created_from_emdash_plugin.dart';

class GetAiSearchInstanceMetadata {
  final pulumi.Input<bool> createdFromAisearchWizard;
  final pulumi.Input<GetAiSearchInstanceMetadataCreatedFromEmdashPlugin> createdFromEmdashPlugin;
  final pulumi.Input<String> workerDomain;

  /// Creates a new [GetAiSearchInstanceMetadata].
  /// [createdFromAisearchWizard] Required.
  /// [createdFromEmdashPlugin] Required.
  /// [workerDomain] Required.
  const GetAiSearchInstanceMetadata({
    required this.createdFromAisearchWizard,
    required this.createdFromEmdashPlugin,
    required this.workerDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdFromAisearchWizard': createdFromAisearchWizard,
      'createdFromEmdashPlugin': pulumi.Input.mapInputValue<GetAiSearchInstanceMetadataCreatedFromEmdashPlugin, Map<String, dynamic>>(createdFromEmdashPlugin, (value) => value.toMap()),
      'workerDomain': workerDomain,
    };
  }

  factory GetAiSearchInstanceMetadata.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceMetadata(
      createdFromAisearchWizard: pulumi.Input.fromValue(map['createdFromAisearchWizard'] as bool),
      createdFromEmdashPlugin: pulumi.Input.fromValue(GetAiSearchInstanceMetadataCreatedFromEmdashPlugin.fromMap((map['createdFromEmdashPlugin']! as Map).cast<String, dynamic>())),
      workerDomain: pulumi.Input.fromValue(map['workerDomain'] as String),
    );
  }
}
