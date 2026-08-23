// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool_data_store_spec_data_store_connection.dart';

class CxToolVersionToolDataStoreSpec {
  /// List of data stores to search.
  /// Structure is documented below.
  final pulumi.Input<List<CxToolVersionToolDataStoreSpecDataStoreConnection>> dataStoreConnections;
  /// Fallback prompt configurations to use.
  final pulumi.Input<Map<String, dynamic>> fallbackPrompt;

  /// Creates a new [CxToolVersionToolDataStoreSpec].
  /// [dataStoreConnections] List of data stores to search.
  /// [fallbackPrompt] Fallback prompt configurations to use.
  const CxToolVersionToolDataStoreSpec({
    required this.dataStoreConnections,
    required this.fallbackPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': pulumi.Input.mapInputValue<List<CxToolVersionToolDataStoreSpecDataStoreConnection>, List<Map<String, dynamic>>>(dataStoreConnections, (value) => pulumi.Input.encodeList<CxToolVersionToolDataStoreSpecDataStoreConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fallbackPrompt': fallbackPrompt,
    };
  }

  factory CxToolVersionToolDataStoreSpec.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolDataStoreSpec(
      dataStoreConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<CxToolVersionToolDataStoreSpecDataStoreConnection>(map['dataStoreConnections']!, (value) => CxToolVersionToolDataStoreSpecDataStoreConnection.fromMap((value as Map).cast<String, dynamic>()))),
      fallbackPrompt: pulumi.Input.fromValue((map['fallbackPrompt']! as Map).cast<String, dynamic>()),
    );
  }
}
