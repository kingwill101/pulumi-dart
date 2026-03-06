// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_data_store_spec_data_store_connection.dart';

class CxToolDataStoreSpec {
  /// List of data stores to search.
  /// Structure is documented below.
  final pulumi.Input<List<CxToolDataStoreSpecDataStoreConnection>> dataStoreConnections;
  /// Fallback prompt configurations to use.
  final pulumi.Input<Map<String, dynamic>> fallbackPrompt;

  /// Creates a new [CxToolDataStoreSpec].
  /// [dataStoreConnections] List of data stores to search.
  /// [fallbackPrompt] Fallback prompt configurations to use.
  const CxToolDataStoreSpec({
    required this.dataStoreConnections,
    required this.fallbackPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': pulumi.Input.mapInputValue<List<CxToolDataStoreSpecDataStoreConnection>, List<Map<String, dynamic>>>(dataStoreConnections, (value) => pulumi.Input.encodeList<CxToolDataStoreSpecDataStoreConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fallbackPrompt': fallbackPrompt,
    };
  }

  factory CxToolDataStoreSpec.fromMap(Map<String, dynamic> map) {
    return CxToolDataStoreSpec(
      dataStoreConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<CxToolDataStoreSpecDataStoreConnection>(map['dataStoreConnections']!, (value) => CxToolDataStoreSpecDataStoreConnection.fromMap((value as Map).cast<String, dynamic>()))),
      fallbackPrompt: pulumi.Input.fromValue((map['fallbackPrompt']! as Map).cast<String, dynamic>()),
    );
  }
}

