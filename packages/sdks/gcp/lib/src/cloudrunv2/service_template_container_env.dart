// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container_env_value_source.dart';

class ServiceTemplateContainerEnv {
  /// Name of the environment variable. Must be a C_IDENTIFIER, and may not exceed 32768 characters.
  final pulumi.Input<String> name;
  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final pulumi.Input<String>? value;
  /// Source for the environment variable's value.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerEnvValueSource>? valueSource;

  /// Creates a new [ServiceTemplateContainerEnv].
  /// [name] Name of the environment variable. Must be a C_IDENTIFIER, and may not exceed 32768 characters.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  /// [valueSource] Source for the environment variable's value.
  ServiceTemplateContainerEnv({
    required this.name,
    this.value,
    this.valueSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
      'valueSource': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateContainerEnvValueSource, Map<String, dynamic>>(valueSource, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerEnv(
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      valueSource: map['valueSource'] == null ? null : (ServiceTemplateContainerEnvValueSource.fromMap((map['valueSource']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

