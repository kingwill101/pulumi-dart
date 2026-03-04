// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_env_value_source.dart';

class GetServiceTemplateContainerEnv {
  /// The name of the Cloud Run v2 Service.
  final pulumi.Input<String> name;

  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final pulumi.Input<String> value;

  /// Source for the environment variable's value.
  final pulumi.Input<List<GetServiceTemplateContainerEnvValueSource>>
  valueSources;

  /// Creates a new [GetServiceTemplateContainerEnv].
  /// [name] The name of the Cloud Run v2 Service.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  /// [valueSources] Source for the environment variable's value.
  GetServiceTemplateContainerEnv({
    required this.name,
    required this.value,
    required this.valueSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueSources':
          pulumi.Input.mapInputValue<
            List<GetServiceTemplateContainerEnvValueSource>,
            List<Map<String, dynamic>>
          >(
            valueSources,
            (value) =>
                pulumi.Input.encodeList<
                  GetServiceTemplateContainerEnvValueSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetServiceTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      valueSources: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServiceTemplateContainerEnvValueSource>(
          map['valueSources']!,
          (value) => GetServiceTemplateContainerEnvValueSource.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
