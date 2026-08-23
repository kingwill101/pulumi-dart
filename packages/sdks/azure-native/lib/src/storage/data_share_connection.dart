// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection details for Data Share source
class DataShareConnection {
  /// The URI of the backing DataShare. Must be in the format: azds://&lt;region&gt;:&lt;DataShareName&gt;:&lt;DataShareIdentifier&gt;
  final pulumi.Input<String> dataShareUri;
  /// The connection type for bucket connection in storage connector.
  /// Expected value is 'DataShare'.
  final pulumi.Input<String> type;

  /// Creates a new [DataShareConnection].
  /// [dataShareUri] The URI of the backing DataShare. Must be in the format: azds://&lt;region&gt;:&lt;DataShareName&gt;:&lt;DataShareIdentifier&gt;
  /// [type] The connection type for bucket connection in storage connector.
  const DataShareConnection({
    required this.dataShareUri,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataShareUri': dataShareUri,
      'type': type,
    };
  }

  factory DataShareConnection.fromMap(Map<String, dynamic> map) {
    return DataShareConnection(
      dataShareUri: pulumi.Input.fromValue(map['dataShareUri'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
