// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_env_var_source_response.dart';

/// EnvVar represents an environment variable present in a Container.
class GoogleCloudRunV2EnvVarResponse {
  /// Name of the environment variable. Must not exceed 32768 characters.
  final pulumi.Input<String> name;

  /// Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "", and the maximum length is 32768 bytes.
  final pulumi.Input<String> value;

  /// Source for the environment variable's value.
  final pulumi.Input<GoogleCloudRunV2EnvVarSourceResponse> valueSource;

  /// Creates a new [GoogleCloudRunV2EnvVarResponse].
  /// [name] Name of the environment variable. Must not exceed 32768 characters.
  /// [value] Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "", and the maximum length is 32768 bytes.
  /// [valueSource] Source for the environment variable's value.
  GoogleCloudRunV2EnvVarResponse({
    required this.name,
    required this.value,
    required this.valueSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueSource':
          pulumi.Input.mapInputValue<
            GoogleCloudRunV2EnvVarSourceResponse,
            Map<String, dynamic>
          >(valueSource, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2EnvVarResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2EnvVarResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      valueSource: pulumi.Input.fromValue(
        GoogleCloudRunV2EnvVarSourceResponse.fromMap(
          (map['valueSource']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
