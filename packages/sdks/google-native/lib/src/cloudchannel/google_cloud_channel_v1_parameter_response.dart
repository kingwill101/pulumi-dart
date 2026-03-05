// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_value_response.dart';

/// Definition for extended entitlement parameters.
class GoogleCloudChannelV1ParameterResponse {
  /// Specifies whether this parameter is allowed to be changed. For example, for a Google Workspace Business Starter entitlement in commitment plan, num_units is editable when entitlement is active.
  final pulumi.Input<bool> editable;
  /// Name of the parameter.
  final pulumi.Input<String> name;
  /// Value of the parameter.
  final pulumi.Input<GoogleCloudChannelV1ValueResponse> value;

  /// Creates a new [GoogleCloudChannelV1ParameterResponse].
  /// [editable] Specifies whether this parameter is allowed to be changed. For example, for a Google Workspace Business Starter entitlement in commitment plan, num_units is editable when entitlement is active.
  /// [name] Name of the parameter.
  /// [value] Value of the parameter.
  GoogleCloudChannelV1ParameterResponse({
    required this.editable,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': editable,
      'name': name,
      'value': pulumi.Input.mapInputValue<GoogleCloudChannelV1ValueResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1ParameterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1ParameterResponse(
      editable: pulumi.Input.fromValue(map['editable'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(GoogleCloudChannelV1ValueResponse.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

