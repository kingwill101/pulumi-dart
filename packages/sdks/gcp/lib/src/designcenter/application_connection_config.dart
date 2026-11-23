// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_connection_config_destination_component_parameter.dart';
import 'application_connection_config_source_component_parameter.dart';

class ApplicationConnectionConfig {
  /// The URI of the connection.
  final pulumi.Input<String> connectionUri;
  /// The parameters of the connection associated with the destination
  /// component.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationConnectionConfigDestinationComponentParameter>?>? destinationComponentParameters;
  /// The parameters of the connection associated with the source
  /// component.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationConnectionConfigSourceComponentParameter>?>? sourceComponentParameters;

  /// Creates a new [ApplicationConnectionConfig].
  /// [connectionUri] The URI of the connection.
  /// [destinationComponentParameters] The parameters of the connection associated with the destination
  /// [sourceComponentParameters] The parameters of the connection associated with the source
  const ApplicationConnectionConfig({
    required this.connectionUri,
    this.destinationComponentParameters,
    this.sourceComponentParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionUri': connectionUri,
      'destinationComponentParameters': ?pulumi.Input.mapOptionalInputValue<List<ApplicationConnectionConfigDestinationComponentParameter>, List<Map<String, dynamic>>>(destinationComponentParameters, (value) => pulumi.Input.encodeList<ApplicationConnectionConfigDestinationComponentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceComponentParameters': ?pulumi.Input.mapOptionalInputValue<List<ApplicationConnectionConfigSourceComponentParameter>, List<Map<String, dynamic>>>(sourceComponentParameters, (value) => pulumi.Input.encodeList<ApplicationConnectionConfigSourceComponentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationConnectionConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationConnectionConfig(
      connectionUri: pulumi.Input.fromValue(map['connectionUri'] as String),
      destinationComponentParameters: (() { final guardedValue = map['destinationComponentParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationConnectionConfigDestinationComponentParameter>(guardedValue, (value) => ApplicationConnectionConfigDestinationComponentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceComponentParameters: (() { final guardedValue = map['sourceComponentParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationConnectionConfigSourceComponentParameter>(guardedValue, (value) => ApplicationConnectionConfigSourceComponentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
