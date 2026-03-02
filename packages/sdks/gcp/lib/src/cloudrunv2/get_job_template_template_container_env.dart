// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_container_env_value_source.dart';

class GetJobTemplateTemplateContainerEnv {
  /// The name of the Cloud Run v2 Job.
  final pulumi.Input<String> name;
  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final pulumi.Input<String> value;
  /// Source for the environment variable's value.
  final pulumi.Input<List<GetJobTemplateTemplateContainerEnvValueSource>> valueSources;

  /// Creates a new [GetJobTemplateTemplateContainerEnv].
  /// [name] The name of the Cloud Run v2 Job.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  /// [valueSources] Source for the environment variable's value.
  GetJobTemplateTemplateContainerEnv({
    required this.name,
    required this.value,
    required this.valueSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueSources': pulumi.Input.mapInputValue<List<GetJobTemplateTemplateContainerEnvValueSource>, List<Map<String, dynamic>>>(valueSources, (value) => pulumi.Input.encodeList<GetJobTemplateTemplateContainerEnvValueSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobTemplateTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerEnv(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
      valueSources: (pulumi.Input.decodeList<GetJobTemplateTemplateContainerEnvValueSource>(map['valueSources'], (value) => GetJobTemplateTemplateContainerEnvValueSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

