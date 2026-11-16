// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_metadata_created_from_emdash_plugin.dart';

class GetAiSearchInstancesResultMetadata {
  final pulumi.Input<bool> createdFromAisearchWizard;
  final pulumi.Input<GetAiSearchInstancesResultMetadataCreatedFromEmdashPlugin> createdFromEmdashPlugin;
  final pulumi.Input<String> workerDomain;

  /// Creates a new [GetAiSearchInstancesResultMetadata].
  /// [createdFromAisearchWizard] Required.
  /// [createdFromEmdashPlugin] Required.
  /// [workerDomain] Required.
  const GetAiSearchInstancesResultMetadata({
    required this.createdFromAisearchWizard,
    required this.createdFromEmdashPlugin,
    required this.workerDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdFromAisearchWizard': createdFromAisearchWizard,
      'createdFromEmdashPlugin': pulumi.Input.mapInputValue<GetAiSearchInstancesResultMetadataCreatedFromEmdashPlugin, Map<String, dynamic>>(createdFromEmdashPlugin, (value) => value.toMap()),
      'workerDomain': workerDomain,
    };
  }

  factory GetAiSearchInstancesResultMetadata.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultMetadata(
      createdFromAisearchWizard: pulumi.Input.fromValue(map['createdFromAisearchWizard'] as bool),
      createdFromEmdashPlugin: pulumi.Input.fromValue(GetAiSearchInstancesResultMetadataCreatedFromEmdashPlugin.fromMap((map['createdFromEmdashPlugin']! as Map).cast<String, dynamic>())),
      workerDomain: pulumi.Input.fromValue(map['workerDomain'] as String),
    );
  }
}
